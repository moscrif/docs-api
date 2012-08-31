/**
Represents multi values. This is not class! Multivalues are set of values stored on Virtual Machine's stack.
@class Multivalue
@module core
@example
    var (x, y, z) = (1, 2, 3);
    x += y + z;

    function mul2values(a, b, mulBy)
    {
        return (a * mulBy, b * mulBy);
    }

    var (a, b) = mul2values(2, 3, 10); // a = 20, b = 30

    // pretty symetric

    class Pair
    {
        function this(a, b)
        {
            this._set(a, b);
        }
        function get()
        {
            return (this._a, this._b);
        }
        function set(a, b)
        {
            this._a = a;
            this._b = b;
        }
    }

    var p = new Pair(10, 2);
    var (p1, p2) = p.get();
    p.set(p2, p3); // swap
*/
class Multivalue
{
}