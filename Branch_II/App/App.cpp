#include "A.h"
#include "B.h"
#include "C.h"
#include "D.h"
#include <iostream>

int main()
{
    std::cout << "App Demo using packages A, B, C, and D." << std::endl;
    A::doTheThing();
    B::doTheThing();
    C::doTheThing();
    D::doTheThing();
}
