"Hello from a Mac-edited HolyC file\n";



F64 DetectUptime() {
  F64 uptime = tS;
  return uptime;
}

Print("Uptime: %f seconds\n", DetectUptime());
