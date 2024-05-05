# the default language is set to Chinese during OS installation to enable input method. That makes user dirs in Chinese, which is not convenient. Change user directories back to English here.
```shell
export LANG=en_US
xdg-user-dirs-gtk-update  # interactively update on GUI
export LANG=zh_CN.UTF-8
```

