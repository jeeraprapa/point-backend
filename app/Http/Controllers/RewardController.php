<?php

namespace App\Http\Controllers;

use App\Models\Reward;
use App\Models\User;
use App\Models\UserPointTransaction;
use App\Models\UserReward;
use Illuminate\Http\Request;
use Laravel\Sanctum\PersonalAccessToken;

class RewardController extends Controller
{
    public function list()
    {
        $rewards = Reward::where('is_active',1)->paginate(6);

        return response()->json([
            'success'=> true,
            'rewards' => $rewards,
        ]);
    }

    public function show ($id,Request $request)
    {
        $reward = Reward::find($id);
        if (! $reward) {
            return response()->json([
                'success' => false,
                'message' => 'Reward not found',
            ]);
        }

        $token = $request->bearerToken();
        $reward->is_redeemable = true;
        if ($token){
            $personal_access = PersonalAccessToken::findToken($token);
            if(!$personal_access){
                return response()->json([
                    'success' => false,
                    'message' => 'Invalid token',
                ]);
            }else{
                $user = User::find($personal_access->tokenable_id);
                $user_id = $user->id;
                $user_reward = UserReward::where('user_id', $user_id)->where('reward_id', $id)->first();
                if ($user_reward) {
                    $reward->is_redeemable = false;
                }
            }
        }

        if ($reward) {
            return response()->json([
                'success' => true,
                'reward' => $reward,
            ]);
        } else {
            return response()->json([
                'success' => false,
                'message' => 'Reward not found',
            ]);
        }
    }

    public function redeem(Request $request)
    {
        $request->validate([
            'reward_id' => 'required|integer',
        ]);

        $reward = Reward::find($request->reward_id);
        if (! $reward) {
            return response()->json([
                'success' => false,
                'message' => 'Reward not found',
            ]);
        }

        $user = $request->user();
        $user_id = $user->id;

        $user_reward = UserReward::where('user_id', $user_id)->where('reward_id', $reward->id)->first();
        if ($user_reward) {
            return response()->json([
                'success' => false,
                'message' => 'Reward already redeemed',
            ]);
        }

        $userReward = new UserReward();
        $userReward->user_id = $user_id;
        $userReward->reward_id = $reward->id;
        $userReward->status = 'redeemed';
        $userReward->redeemed_at = now();
        $userReward->save();

        //transaction
        $transaction = new UserPointTransaction();
        $transaction->user_id = $user_id;
        $transaction->points = $reward->points * -1;
        $transaction->description = 'Redeem reward: ' . $reward->name;
        $transaction->transaction_type = 'redeem';
        $transaction->transaction_date = now();
        $transaction->save();

        return response()->json([
            'success' => true,
            'message' => 'Reward redeemed',
            'user_reward' => $userReward->load('reward')
        ]);
    }

    public function redeemStatus ($reward_id,Request $request)
    {
        $reward = Reward::find($reward_id);
        if (! $reward) {
            return response()->json([
                'success' => false,
                'message' => 'Reward not found',
            ]);
        }

        $user = $request->user();
        if (! $user) {
            return response()->json([
                'success' => false,
                'message' => 'User not found',
            ]);
        }

        $user_id = $user->id;
        $user_reward = UserReward::where('user_id', $user_id)->where('reward_id', $reward_id)->first();
        if ($user_reward) {
            return response()->json([
                'success' => true,
                'redeemed' => true,
            ]);
        } else {
            return response()->json([
                'success' => false,
                'redeemed' => false,
                'message' => 'Reward not redeemed',
            ]);
        }

    }


    public function totalPoints (Request $request)
    {
        try {
            return response()->json([
                "success" => true,
                'total_points' => $request->user()->points,
            ]);
        } catch (\Throwable $th) {
            return response()->json([
                "success" => false,
                'error' => "Unauthorized"
            ]);
        }
    }
}
