<?php

namespace App\Http\Controllers;

use App\Models\User;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Hash;
use Illuminate\Validation\ValidationException;

class AuthController extends Controller
{
    public function register (Request $request)
    {
        $request->validate([
            'name' => 'required',
            'email' => 'required|email|unique:users',
            'password' => 'required|min:6',
        ]);

        $user = new User;
        $user->name = $request->name;
        $user->email = $request->email;
        $user->password = Hash::make($request->password);
        $user->save();

        return response()->json([
            'message' => 'User created',
        ]);
    }

    public function login (Request $request)
    {
        $request->validate([
            'email' => 'required|email',
            'password' => 'required',
        ]);

        $user = User::where('email', $request->email)->first();

        if (! $user || ! Hash::check($request->password, $user->password)) {
            throw ValidationException::withMessages([
                "success" => false,
                'error' =>  "Invalid username or password"
            ]);
        }
        return response()->json([
            "success" => true,
            'token' => $user->createToken($user->id)->plainTextToken,
            "user" => $user,
        ]);
    }

    public function logout (Request $request)
    {
        $request->user()->currentAccessToken()->delete();
        return response()->json([
            'message' => 'Logged out',
        ]);
    }

    public function getProfile (Request $request)
    {
        try {
            return response()->json([
                "success" => true,
                'user' => $request->user(),
            ]);
        } catch (\Throwable $th) {
            return response()->json([
                "success" => false,
                'error' => "Unauthorized"
            ]);
        }
    }

}
