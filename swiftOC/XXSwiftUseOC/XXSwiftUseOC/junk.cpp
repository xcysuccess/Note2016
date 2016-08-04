//
//  junk.cpp
//  XXSwiftUseOC
//
//  Created by tomxiang on 8/4/16.
//  Copyright © 2016 tomxiang. All rights reserved.
//
#include "junk.h"

A::A(int _i) : m_Int(_i) {}

int A::getInt() { return m_Int; }

extern "C" int getIntFromCPP()
{
    // Create an instance of A, defined in
    // the library, and call getInt() on it:
    return A(1234).getInt();
}
