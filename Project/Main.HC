"Hello from a Mac-edited HolyC file\n";



F64 DetectUptime() {
  F64 uptime = tS;
  return uptime;
}

U8 *OSName() {
  return "Temple OS";
}

I64 TotalRAM() {
  I64 ram_total = sys_code_bp->alloced_u8s;
  if (sys_data_bp) {
    ram_total += sys_data_bp->alloced_u8s;
  }

  I64 ram_total_mb = ram_total / (1024 * 1024);
  return ram_total_mb;
}

I64 UsedRAM() {
  I64 ram_used = sys_code_bp->used_u8s;
  if (sys_data_bp) {
    ram_used += sys_data_bp->used_u8s;
  }

  I64 ram_used_mb = ram_used / (1024 * 1024);
  return ram_used_mb;
}

Print("RAM: %d MB / %d MB\n", UsedRAM(), TotalRAM());

Print("OS Name: %s\n", OSName());

Print("Uptime: %f seconds\n", DetectUptime());
