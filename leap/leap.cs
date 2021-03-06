namespace YearNamespace
{
    // Static classes do not need to be instantiated
    public static class Year
    {
        public static bool IsLeap(int year)
        {
            if (year % 400 == 0)
                return true;

            if (year % 100 == 0)
                return false;

            if (year % 4 == 0)
                return true;
            else
                return false;
        }
    }
}
