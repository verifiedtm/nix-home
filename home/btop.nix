{ ... }:

{
  programs.btop = {
    enable = true;
    settings = {
      update_ms = 1000;
      proc_tree = true;
      show_gpu_info = "On";
    };
  };
}
