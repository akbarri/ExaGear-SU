.class public Lcom/eltechs/axs/environmentService/components/XServerComponent;
.super Lcom/eltechs/axs/environmentService/EnvironmentComponent;
.source "XServerComponent.java"


# instance fields
.field private connector:Lcom/eltechs/axs/xconnectors/epoll/FairEpollConnector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/eltechs/axs/xconnectors/epoll/FairEpollConnector<",
            "Lcom/eltechs/axs/xserver/client/XClient;",
            ">;"
        }
    .end annotation
.end field

.field private desktopExperience:Lcom/eltechs/axs/xserver/DesktopExperience;

.field private final displayNumber:I

.field private final screenInfo:Lcom/eltechs/axs/xserver/ScreenInfo;

.field private socketConf:Lcom/eltechs/axs/xconnectors/epoll/UnixSocketConfiguration;

.field private xServer:Lcom/eltechs/axs/xserver/XServer;


# direct methods
.method public constructor <init>(Lcom/eltechs/axs/xserver/ScreenInfo;ILcom/eltechs/axs/xconnectors/epoll/UnixSocketConfiguration;)V
    .locals 0

    .line 45
    invoke-direct {p0}, Lcom/eltechs/axs/environmentService/EnvironmentComponent;-><init>()V

    .line 46
    iput-object p1, p0, Lcom/eltechs/axs/environmentService/components/XServerComponent;->screenInfo:Lcom/eltechs/axs/xserver/ScreenInfo;

    .line 47
    iput p2, p0, Lcom/eltechs/axs/environmentService/components/XServerComponent;->displayNumber:I

    .line 48
    iput-object p3, p0, Lcom/eltechs/axs/environmentService/components/XServerComponent;->socketConf:Lcom/eltechs/axs/xconnectors/epoll/UnixSocketConfiguration;

    return-void
.end method

.method private static createKeyboardModel()Lcom/eltechs/axs/xserver/KeyboardModel;
    .locals 17

    .line 118
    new-instance v0, Lcom/eltechs/axs/xserver/KeyboardLayout;

    invoke-direct {v0}, Lcom/eltechs/axs/xserver/KeyboardLayout;-><init>()V

    .line 120
    sget-object v1, Lcom/eltechs/axs/KeyCodesX;->KEY_ESC:Lcom/eltechs/axs/KeyCodesX;

    invoke-virtual {v1}, Lcom/eltechs/axs/KeyCodesX;->getValue()I

    move-result v1

    sget-object v2, Lcom/eltechs/axs/xserver/keysyms/FunctionKeysyms;->ESC:Lcom/eltechs/axs/xserver/keysyms/FunctionKeysyms;

    invoke-virtual {v2}, Lcom/eltechs/axs/xserver/keysyms/FunctionKeysyms;->getKeysym()I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/eltechs/axs/xserver/KeyboardLayout;->setKeysymMapping(III)V

    .line 121
    sget-object v1, Lcom/eltechs/axs/KeyCodesX;->KEY_RETURN:Lcom/eltechs/axs/KeyCodesX;

    invoke-virtual {v1}, Lcom/eltechs/axs/KeyCodesX;->getValue()I

    move-result v1

    sget-object v2, Lcom/eltechs/axs/xserver/keysyms/FunctionKeysyms;->RETURN:Lcom/eltechs/axs/xserver/keysyms/FunctionKeysyms;

    invoke-virtual {v2}, Lcom/eltechs/axs/xserver/keysyms/FunctionKeysyms;->getKeysym()I

    move-result v2

    invoke-virtual {v0, v1, v2, v3}, Lcom/eltechs/axs/xserver/KeyboardLayout;->setKeysymMapping(III)V

    .line 124
    sget-object v1, Lcom/eltechs/axs/KeyCodesX;->KEY_RIGHT:Lcom/eltechs/axs/KeyCodesX;

    invoke-virtual {v1}, Lcom/eltechs/axs/KeyCodesX;->getValue()I

    move-result v1

    sget-object v2, Lcom/eltechs/axs/xserver/keysyms/NavigationKeysyms;->RIGHT:Lcom/eltechs/axs/xserver/keysyms/NavigationKeysyms;

    invoke-virtual {v2}, Lcom/eltechs/axs/xserver/keysyms/NavigationKeysyms;->getKeysym()I

    move-result v2

    invoke-virtual {v0, v1, v2, v3}, Lcom/eltechs/axs/xserver/KeyboardLayout;->setKeysymMapping(III)V

    .line 125
    sget-object v1, Lcom/eltechs/axs/KeyCodesX;->KEY_UP:Lcom/eltechs/axs/KeyCodesX;

    invoke-virtual {v1}, Lcom/eltechs/axs/KeyCodesX;->getValue()I

    move-result v1

    sget-object v2, Lcom/eltechs/axs/xserver/keysyms/NavigationKeysyms;->UP:Lcom/eltechs/axs/xserver/keysyms/NavigationKeysyms;

    invoke-virtual {v2}, Lcom/eltechs/axs/xserver/keysyms/NavigationKeysyms;->getKeysym()I

    move-result v2

    invoke-virtual {v0, v1, v2, v3}, Lcom/eltechs/axs/xserver/KeyboardLayout;->setKeysymMapping(III)V

    .line 126
    sget-object v1, Lcom/eltechs/axs/KeyCodesX;->KEY_LEFT:Lcom/eltechs/axs/KeyCodesX;

    invoke-virtual {v1}, Lcom/eltechs/axs/KeyCodesX;->getValue()I

    move-result v1

    sget-object v2, Lcom/eltechs/axs/xserver/keysyms/NavigationKeysyms;->LEFT:Lcom/eltechs/axs/xserver/keysyms/NavigationKeysyms;

    invoke-virtual {v2}, Lcom/eltechs/axs/xserver/keysyms/NavigationKeysyms;->getKeysym()I

    move-result v2

    invoke-virtual {v0, v1, v2, v3}, Lcom/eltechs/axs/xserver/KeyboardLayout;->setKeysymMapping(III)V

    .line 127
    sget-object v1, Lcom/eltechs/axs/KeyCodesX;->KEY_DOWN:Lcom/eltechs/axs/KeyCodesX;

    invoke-virtual {v1}, Lcom/eltechs/axs/KeyCodesX;->getValue()I

    move-result v1

    sget-object v2, Lcom/eltechs/axs/xserver/keysyms/NavigationKeysyms;->DOWN:Lcom/eltechs/axs/xserver/keysyms/NavigationKeysyms;

    invoke-virtual {v2}, Lcom/eltechs/axs/xserver/keysyms/NavigationKeysyms;->getKeysym()I

    move-result v2

    invoke-virtual {v0, v1, v2, v3}, Lcom/eltechs/axs/xserver/KeyboardLayout;->setKeysymMapping(III)V

    .line 130
    sget-object v1, Lcom/eltechs/axs/KeyCodesX;->KEY_DELETE:Lcom/eltechs/axs/KeyCodesX;

    invoke-virtual {v1}, Lcom/eltechs/axs/KeyCodesX;->getValue()I

    move-result v1

    sget-object v2, Lcom/eltechs/axs/xserver/keysyms/FunctionKeysyms;->DELETE:Lcom/eltechs/axs/xserver/keysyms/FunctionKeysyms;

    invoke-virtual {v2}, Lcom/eltechs/axs/xserver/keysyms/FunctionKeysyms;->getKeysym()I

    move-result v2

    invoke-virtual {v0, v1, v2, v3}, Lcom/eltechs/axs/xserver/KeyboardLayout;->setKeysymMapping(III)V

    .line 131
    sget-object v1, Lcom/eltechs/axs/KeyCodesX;->KEY_BACKSPACE:Lcom/eltechs/axs/KeyCodesX;

    invoke-virtual {v1}, Lcom/eltechs/axs/KeyCodesX;->getValue()I

    move-result v1

    sget-object v2, Lcom/eltechs/axs/xserver/keysyms/FunctionKeysyms;->BACKSPACE:Lcom/eltechs/axs/xserver/keysyms/FunctionKeysyms;

    invoke-virtual {v2}, Lcom/eltechs/axs/xserver/keysyms/FunctionKeysyms;->getKeysym()I

    move-result v2

    invoke-virtual {v0, v1, v2, v3}, Lcom/eltechs/axs/xserver/KeyboardLayout;->setKeysymMapping(III)V

    .line 132
    sget-object v1, Lcom/eltechs/axs/KeyCodesX;->KEY_INSERT:Lcom/eltechs/axs/KeyCodesX;

    invoke-virtual {v1}, Lcom/eltechs/axs/KeyCodesX;->getValue()I

    move-result v1

    sget-object v2, Lcom/eltechs/axs/xserver/keysyms/FunctionKeysyms;->INSERT:Lcom/eltechs/axs/xserver/keysyms/FunctionKeysyms;

    invoke-virtual {v2}, Lcom/eltechs/axs/xserver/keysyms/FunctionKeysyms;->getKeysym()I

    move-result v2

    invoke-virtual {v0, v1, v2, v3}, Lcom/eltechs/axs/xserver/KeyboardLayout;->setKeysymMapping(III)V

    .line 135
    sget-object v1, Lcom/eltechs/axs/KeyCodesX;->KEY_PRIOR:Lcom/eltechs/axs/KeyCodesX;

    invoke-virtual {v1}, Lcom/eltechs/axs/KeyCodesX;->getValue()I

    move-result v1

    sget-object v2, Lcom/eltechs/axs/xserver/keysyms/NavigationKeysyms;->PRIOR:Lcom/eltechs/axs/xserver/keysyms/NavigationKeysyms;

    invoke-virtual {v2}, Lcom/eltechs/axs/xserver/keysyms/NavigationKeysyms;->getKeysym()I

    move-result v2

    invoke-virtual {v0, v1, v2, v3}, Lcom/eltechs/axs/xserver/KeyboardLayout;->setKeysymMapping(III)V

    .line 136
    sget-object v1, Lcom/eltechs/axs/KeyCodesX;->KEY_NEXT:Lcom/eltechs/axs/KeyCodesX;

    invoke-virtual {v1}, Lcom/eltechs/axs/KeyCodesX;->getValue()I

    move-result v1

    sget-object v2, Lcom/eltechs/axs/xserver/keysyms/NavigationKeysyms;->NEXT:Lcom/eltechs/axs/xserver/keysyms/NavigationKeysyms;

    invoke-virtual {v2}, Lcom/eltechs/axs/xserver/keysyms/NavigationKeysyms;->getKeysym()I

    move-result v2

    invoke-virtual {v0, v1, v2, v3}, Lcom/eltechs/axs/xserver/KeyboardLayout;->setKeysymMapping(III)V

    .line 139
    sget-object v1, Lcom/eltechs/axs/KeyCodesX;->KEY_HOME:Lcom/eltechs/axs/KeyCodesX;

    invoke-virtual {v1}, Lcom/eltechs/axs/KeyCodesX;->getValue()I

    move-result v1

    sget-object v2, Lcom/eltechs/axs/xserver/keysyms/NavigationKeysyms;->HOME:Lcom/eltechs/axs/xserver/keysyms/NavigationKeysyms;

    invoke-virtual {v2}, Lcom/eltechs/axs/xserver/keysyms/NavigationKeysyms;->getKeysym()I

    move-result v2

    invoke-virtual {v0, v1, v2, v3}, Lcom/eltechs/axs/xserver/KeyboardLayout;->setKeysymMapping(III)V

    .line 140
    sget-object v1, Lcom/eltechs/axs/KeyCodesX;->KEY_END:Lcom/eltechs/axs/KeyCodesX;

    invoke-virtual {v1}, Lcom/eltechs/axs/KeyCodesX;->getValue()I

    move-result v1

    sget-object v2, Lcom/eltechs/axs/xserver/keysyms/NavigationKeysyms;->END:Lcom/eltechs/axs/xserver/keysyms/NavigationKeysyms;

    invoke-virtual {v2}, Lcom/eltechs/axs/xserver/keysyms/NavigationKeysyms;->getKeysym()I

    move-result v2

    invoke-virtual {v0, v1, v2, v3}, Lcom/eltechs/axs/xserver/KeyboardLayout;->setKeysymMapping(III)V

    .line 143
    sget-object v1, Lcom/eltechs/axs/KeyCodesX;->KEY_SHIFT_LEFT:Lcom/eltechs/axs/KeyCodesX;

    invoke-virtual {v1}, Lcom/eltechs/axs/KeyCodesX;->getValue()I

    move-result v1

    sget-object v2, Lcom/eltechs/axs/xserver/keysyms/ModifierKeysyms;->SHIFT_L:Lcom/eltechs/axs/xserver/keysyms/ModifierKeysyms;

    invoke-virtual {v2}, Lcom/eltechs/axs/xserver/keysyms/ModifierKeysyms;->getKeysym()I

    move-result v2

    invoke-virtual {v0, v1, v2, v3}, Lcom/eltechs/axs/xserver/KeyboardLayout;->setKeysymMapping(III)V

    .line 144
    sget-object v1, Lcom/eltechs/axs/KeyCodesX;->KEY_SHIFT_RIGHT:Lcom/eltechs/axs/KeyCodesX;

    invoke-virtual {v1}, Lcom/eltechs/axs/KeyCodesX;->getValue()I

    move-result v1

    sget-object v2, Lcom/eltechs/axs/xserver/keysyms/ModifierKeysyms;->SHIFT_R:Lcom/eltechs/axs/xserver/keysyms/ModifierKeysyms;

    invoke-virtual {v2}, Lcom/eltechs/axs/xserver/keysyms/ModifierKeysyms;->getKeysym()I

    move-result v2

    invoke-virtual {v0, v1, v2, v3}, Lcom/eltechs/axs/xserver/KeyboardLayout;->setKeysymMapping(III)V

    .line 145
    sget-object v1, Lcom/eltechs/axs/KeyCodesX;->KEY_CONTROL_LEFT:Lcom/eltechs/axs/KeyCodesX;

    invoke-virtual {v1}, Lcom/eltechs/axs/KeyCodesX;->getValue()I

    move-result v1

    sget-object v2, Lcom/eltechs/axs/xserver/keysyms/ModifierKeysyms;->CONTROL_L:Lcom/eltechs/axs/xserver/keysyms/ModifierKeysyms;

    invoke-virtual {v2}, Lcom/eltechs/axs/xserver/keysyms/ModifierKeysyms;->getKeysym()I

    move-result v2

    invoke-virtual {v0, v1, v2, v3}, Lcom/eltechs/axs/xserver/KeyboardLayout;->setKeysymMapping(III)V

    .line 146
    sget-object v1, Lcom/eltechs/axs/KeyCodesX;->KEY_CONTROL_RIGHT:Lcom/eltechs/axs/KeyCodesX;

    invoke-virtual {v1}, Lcom/eltechs/axs/KeyCodesX;->getValue()I

    move-result v1

    sget-object v2, Lcom/eltechs/axs/xserver/keysyms/ModifierKeysyms;->CONTROL_R:Lcom/eltechs/axs/xserver/keysyms/ModifierKeysyms;

    invoke-virtual {v2}, Lcom/eltechs/axs/xserver/keysyms/ModifierKeysyms;->getKeysym()I

    move-result v2

    invoke-virtual {v0, v1, v2, v3}, Lcom/eltechs/axs/xserver/KeyboardLayout;->setKeysymMapping(III)V

    .line 147
    sget-object v1, Lcom/eltechs/axs/KeyCodesX;->KEY_ALT_LEFT:Lcom/eltechs/axs/KeyCodesX;

    invoke-virtual {v1}, Lcom/eltechs/axs/KeyCodesX;->getValue()I

    move-result v1

    sget-object v2, Lcom/eltechs/axs/xserver/keysyms/ModifierKeysyms;->ALT_L:Lcom/eltechs/axs/xserver/keysyms/ModifierKeysyms;

    invoke-virtual {v2}, Lcom/eltechs/axs/xserver/keysyms/ModifierKeysyms;->getKeysym()I

    move-result v2

    invoke-virtual {v0, v1, v2, v3}, Lcom/eltechs/axs/xserver/KeyboardLayout;->setKeysymMapping(III)V

    .line 148
    sget-object v1, Lcom/eltechs/axs/KeyCodesX;->KEY_ALT_RIGHT:Lcom/eltechs/axs/KeyCodesX;

    invoke-virtual {v1}, Lcom/eltechs/axs/KeyCodesX;->getValue()I

    move-result v1

    sget-object v2, Lcom/eltechs/axs/xserver/keysyms/ModifierKeysyms;->ALT_R:Lcom/eltechs/axs/xserver/keysyms/ModifierKeysyms;

    invoke-virtual {v2}, Lcom/eltechs/axs/xserver/keysyms/ModifierKeysyms;->getKeysym()I

    move-result v2

    invoke-virtual {v0, v1, v2, v3}, Lcom/eltechs/axs/xserver/KeyboardLayout;->setKeysymMapping(III)V

    .line 151
    sget-object v1, Lcom/eltechs/axs/KeyCodesX;->KEY_TAB:Lcom/eltechs/axs/KeyCodesX;

    invoke-virtual {v1}, Lcom/eltechs/axs/KeyCodesX;->getValue()I

    move-result v1

    sget-object v2, Lcom/eltechs/axs/xserver/keysyms/FunctionKeysyms;->TAB:Lcom/eltechs/axs/xserver/keysyms/FunctionKeysyms;

    invoke-virtual {v2}, Lcom/eltechs/axs/xserver/keysyms/FunctionKeysyms;->getKeysym()I

    move-result v2

    invoke-virtual {v0, v1, v2, v3}, Lcom/eltechs/axs/xserver/KeyboardLayout;->setKeysymMapping(III)V

    .line 152
    sget-object v1, Lcom/eltechs/axs/KeyCodesX;->KEY_SPACE:Lcom/eltechs/axs/KeyCodesX;

    invoke-virtual {v1}, Lcom/eltechs/axs/KeyCodesX;->getValue()I

    move-result v1

    const/16 v2, 0x20

    const/16 v4, 0x20

    invoke-virtual {v0, v1, v2, v4}, Lcom/eltechs/axs/xserver/KeyboardLayout;->setKeysymMapping(III)V

    .line 155
    sget-object v1, Lcom/eltechs/axs/KeyCodesX;->KEY_A:Lcom/eltechs/axs/KeyCodesX;

    invoke-virtual {v1}, Lcom/eltechs/axs/KeyCodesX;->getValue()I

    move-result v1

    const/16 v2, 0x61

    const/16 v4, 0x41

    invoke-virtual {v0, v1, v2, v4}, Lcom/eltechs/axs/xserver/KeyboardLayout;->setKeysymMapping(III)V

    .line 156
    sget-object v1, Lcom/eltechs/axs/KeyCodesX;->KEY_B:Lcom/eltechs/axs/KeyCodesX;

    invoke-virtual {v1}, Lcom/eltechs/axs/KeyCodesX;->getValue()I

    move-result v1

    const/16 v2, 0x62

    const/16 v4, 0x42

    invoke-virtual {v0, v1, v2, v4}, Lcom/eltechs/axs/xserver/KeyboardLayout;->setKeysymMapping(III)V

    .line 157
    sget-object v1, Lcom/eltechs/axs/KeyCodesX;->KEY_C:Lcom/eltechs/axs/KeyCodesX;

    invoke-virtual {v1}, Lcom/eltechs/axs/KeyCodesX;->getValue()I

    move-result v1

    const/16 v2, 0x63

    const/16 v4, 0x43

    invoke-virtual {v0, v1, v2, v4}, Lcom/eltechs/axs/xserver/KeyboardLayout;->setKeysymMapping(III)V

    .line 158
    sget-object v1, Lcom/eltechs/axs/KeyCodesX;->KEY_D:Lcom/eltechs/axs/KeyCodesX;

    invoke-virtual {v1}, Lcom/eltechs/axs/KeyCodesX;->getValue()I

    move-result v1

    const/16 v2, 0x64

    const/16 v4, 0x44

    invoke-virtual {v0, v1, v2, v4}, Lcom/eltechs/axs/xserver/KeyboardLayout;->setKeysymMapping(III)V

    .line 159
    sget-object v1, Lcom/eltechs/axs/KeyCodesX;->KEY_E:Lcom/eltechs/axs/KeyCodesX;

    invoke-virtual {v1}, Lcom/eltechs/axs/KeyCodesX;->getValue()I

    move-result v1

    const/16 v2, 0x65

    const/16 v4, 0x45

    invoke-virtual {v0, v1, v2, v4}, Lcom/eltechs/axs/xserver/KeyboardLayout;->setKeysymMapping(III)V

    .line 160
    sget-object v1, Lcom/eltechs/axs/KeyCodesX;->KEY_F:Lcom/eltechs/axs/KeyCodesX;

    invoke-virtual {v1}, Lcom/eltechs/axs/KeyCodesX;->getValue()I

    move-result v1

    const/16 v2, 0x66

    const/16 v4, 0x46

    invoke-virtual {v0, v1, v2, v4}, Lcom/eltechs/axs/xserver/KeyboardLayout;->setKeysymMapping(III)V

    .line 161
    sget-object v1, Lcom/eltechs/axs/KeyCodesX;->KEY_G:Lcom/eltechs/axs/KeyCodesX;

    invoke-virtual {v1}, Lcom/eltechs/axs/KeyCodesX;->getValue()I

    move-result v1

    const/16 v2, 0x67

    const/16 v4, 0x47

    invoke-virtual {v0, v1, v2, v4}, Lcom/eltechs/axs/xserver/KeyboardLayout;->setKeysymMapping(III)V

    .line 162
    sget-object v1, Lcom/eltechs/axs/KeyCodesX;->KEY_H:Lcom/eltechs/axs/KeyCodesX;

    invoke-virtual {v1}, Lcom/eltechs/axs/KeyCodesX;->getValue()I

    move-result v1

    const/16 v2, 0x68

    const/16 v4, 0x48

    invoke-virtual {v0, v1, v2, v4}, Lcom/eltechs/axs/xserver/KeyboardLayout;->setKeysymMapping(III)V

    .line 163
    sget-object v1, Lcom/eltechs/axs/KeyCodesX;->KEY_I:Lcom/eltechs/axs/KeyCodesX;

    invoke-virtual {v1}, Lcom/eltechs/axs/KeyCodesX;->getValue()I

    move-result v1

    const/16 v2, 0x69

    const/16 v4, 0x49

    invoke-virtual {v0, v1, v2, v4}, Lcom/eltechs/axs/xserver/KeyboardLayout;->setKeysymMapping(III)V

    .line 164
    sget-object v1, Lcom/eltechs/axs/KeyCodesX;->KEY_J:Lcom/eltechs/axs/KeyCodesX;

    invoke-virtual {v1}, Lcom/eltechs/axs/KeyCodesX;->getValue()I

    move-result v1

    const/16 v2, 0x6a

    const/16 v4, 0x4a

    invoke-virtual {v0, v1, v2, v4}, Lcom/eltechs/axs/xserver/KeyboardLayout;->setKeysymMapping(III)V

    .line 165
    sget-object v1, Lcom/eltechs/axs/KeyCodesX;->KEY_K:Lcom/eltechs/axs/KeyCodesX;

    invoke-virtual {v1}, Lcom/eltechs/axs/KeyCodesX;->getValue()I

    move-result v1

    const/16 v2, 0x6b

    const/16 v4, 0x4b

    invoke-virtual {v0, v1, v2, v4}, Lcom/eltechs/axs/xserver/KeyboardLayout;->setKeysymMapping(III)V

    .line 166
    sget-object v1, Lcom/eltechs/axs/KeyCodesX;->KEY_L:Lcom/eltechs/axs/KeyCodesX;

    invoke-virtual {v1}, Lcom/eltechs/axs/KeyCodesX;->getValue()I

    move-result v1

    const/16 v2, 0x6c

    const/16 v4, 0x4c

    invoke-virtual {v0, v1, v2, v4}, Lcom/eltechs/axs/xserver/KeyboardLayout;->setKeysymMapping(III)V

    .line 167
    sget-object v1, Lcom/eltechs/axs/KeyCodesX;->KEY_M:Lcom/eltechs/axs/KeyCodesX;

    invoke-virtual {v1}, Lcom/eltechs/axs/KeyCodesX;->getValue()I

    move-result v1

    const/16 v2, 0x6d

    const/16 v4, 0x4d

    invoke-virtual {v0, v1, v2, v4}, Lcom/eltechs/axs/xserver/KeyboardLayout;->setKeysymMapping(III)V

    .line 168
    sget-object v1, Lcom/eltechs/axs/KeyCodesX;->KEY_N:Lcom/eltechs/axs/KeyCodesX;

    invoke-virtual {v1}, Lcom/eltechs/axs/KeyCodesX;->getValue()I

    move-result v1

    const/16 v2, 0x6e

    const/16 v4, 0x4e

    invoke-virtual {v0, v1, v2, v4}, Lcom/eltechs/axs/xserver/KeyboardLayout;->setKeysymMapping(III)V

    .line 169
    sget-object v1, Lcom/eltechs/axs/KeyCodesX;->KEY_O:Lcom/eltechs/axs/KeyCodesX;

    invoke-virtual {v1}, Lcom/eltechs/axs/KeyCodesX;->getValue()I

    move-result v1

    const/16 v2, 0x6f

    const/16 v4, 0x4f

    invoke-virtual {v0, v1, v2, v4}, Lcom/eltechs/axs/xserver/KeyboardLayout;->setKeysymMapping(III)V

    .line 170
    sget-object v1, Lcom/eltechs/axs/KeyCodesX;->KEY_P:Lcom/eltechs/axs/KeyCodesX;

    invoke-virtual {v1}, Lcom/eltechs/axs/KeyCodesX;->getValue()I

    move-result v1

    const/16 v2, 0x70

    const/16 v4, 0x50

    invoke-virtual {v0, v1, v2, v4}, Lcom/eltechs/axs/xserver/KeyboardLayout;->setKeysymMapping(III)V

    .line 171
    sget-object v1, Lcom/eltechs/axs/KeyCodesX;->KEY_Q:Lcom/eltechs/axs/KeyCodesX;

    invoke-virtual {v1}, Lcom/eltechs/axs/KeyCodesX;->getValue()I

    move-result v1

    const/16 v2, 0x71

    const/16 v4, 0x51

    invoke-virtual {v0, v1, v2, v4}, Lcom/eltechs/axs/xserver/KeyboardLayout;->setKeysymMapping(III)V

    .line 172
    sget-object v1, Lcom/eltechs/axs/KeyCodesX;->KEY_R:Lcom/eltechs/axs/KeyCodesX;

    invoke-virtual {v1}, Lcom/eltechs/axs/KeyCodesX;->getValue()I

    move-result v1

    const/16 v2, 0x72

    const/16 v4, 0x52

    invoke-virtual {v0, v1, v2, v4}, Lcom/eltechs/axs/xserver/KeyboardLayout;->setKeysymMapping(III)V

    .line 173
    sget-object v1, Lcom/eltechs/axs/KeyCodesX;->KEY_S:Lcom/eltechs/axs/KeyCodesX;

    invoke-virtual {v1}, Lcom/eltechs/axs/KeyCodesX;->getValue()I

    move-result v1

    const/16 v2, 0x73

    const/16 v4, 0x53

    invoke-virtual {v0, v1, v2, v4}, Lcom/eltechs/axs/xserver/KeyboardLayout;->setKeysymMapping(III)V

    .line 174
    sget-object v1, Lcom/eltechs/axs/KeyCodesX;->KEY_T:Lcom/eltechs/axs/KeyCodesX;

    invoke-virtual {v1}, Lcom/eltechs/axs/KeyCodesX;->getValue()I

    move-result v1

    const/16 v2, 0x74

    const/16 v4, 0x54

    invoke-virtual {v0, v1, v2, v4}, Lcom/eltechs/axs/xserver/KeyboardLayout;->setKeysymMapping(III)V

    .line 175
    sget-object v1, Lcom/eltechs/axs/KeyCodesX;->KEY_U:Lcom/eltechs/axs/KeyCodesX;

    invoke-virtual {v1}, Lcom/eltechs/axs/KeyCodesX;->getValue()I

    move-result v1

    const/16 v2, 0x75

    const/16 v4, 0x55

    invoke-virtual {v0, v1, v2, v4}, Lcom/eltechs/axs/xserver/KeyboardLayout;->setKeysymMapping(III)V

    .line 176
    sget-object v1, Lcom/eltechs/axs/KeyCodesX;->KEY_V:Lcom/eltechs/axs/KeyCodesX;

    invoke-virtual {v1}, Lcom/eltechs/axs/KeyCodesX;->getValue()I

    move-result v1

    const/16 v2, 0x76

    const/16 v4, 0x56

    invoke-virtual {v0, v1, v2, v4}, Lcom/eltechs/axs/xserver/KeyboardLayout;->setKeysymMapping(III)V

    .line 177
    sget-object v1, Lcom/eltechs/axs/KeyCodesX;->KEY_W:Lcom/eltechs/axs/KeyCodesX;

    invoke-virtual {v1}, Lcom/eltechs/axs/KeyCodesX;->getValue()I

    move-result v1

    const/16 v2, 0x77

    const/16 v4, 0x57

    invoke-virtual {v0, v1, v2, v4}, Lcom/eltechs/axs/xserver/KeyboardLayout;->setKeysymMapping(III)V

    .line 178
    sget-object v1, Lcom/eltechs/axs/KeyCodesX;->KEY_X:Lcom/eltechs/axs/KeyCodesX;

    invoke-virtual {v1}, Lcom/eltechs/axs/KeyCodesX;->getValue()I

    move-result v1

    const/16 v2, 0x78

    const/16 v4, 0x58

    invoke-virtual {v0, v1, v2, v4}, Lcom/eltechs/axs/xserver/KeyboardLayout;->setKeysymMapping(III)V

    .line 179
    sget-object v1, Lcom/eltechs/axs/KeyCodesX;->KEY_Y:Lcom/eltechs/axs/KeyCodesX;

    invoke-virtual {v1}, Lcom/eltechs/axs/KeyCodesX;->getValue()I

    move-result v1

    const/16 v2, 0x79

    const/16 v4, 0x59

    invoke-virtual {v0, v1, v2, v4}, Lcom/eltechs/axs/xserver/KeyboardLayout;->setKeysymMapping(III)V

    .line 180
    sget-object v1, Lcom/eltechs/axs/KeyCodesX;->KEY_Z:Lcom/eltechs/axs/KeyCodesX;

    invoke-virtual {v1}, Lcom/eltechs/axs/KeyCodesX;->getValue()I

    move-result v1

    const/16 v2, 0x7a

    const/16 v4, 0x5a

    invoke-virtual {v0, v1, v2, v4}, Lcom/eltechs/axs/xserver/KeyboardLayout;->setKeysymMapping(III)V

    .line 183
    sget-object v1, Lcom/eltechs/axs/KeyCodesX;->KEY_1:Lcom/eltechs/axs/KeyCodesX;

    invoke-virtual {v1}, Lcom/eltechs/axs/KeyCodesX;->getValue()I

    move-result v1

    const/16 v2, 0x31

    const/16 v4, 0x21

    invoke-virtual {v0, v1, v2, v4}, Lcom/eltechs/axs/xserver/KeyboardLayout;->setKeysymMapping(III)V

    .line 184
    sget-object v1, Lcom/eltechs/axs/KeyCodesX;->KEY_2:Lcom/eltechs/axs/KeyCodesX;

    invoke-virtual {v1}, Lcom/eltechs/axs/KeyCodesX;->getValue()I

    move-result v1

    const/16 v4, 0x32

    const/16 v5, 0x40

    invoke-virtual {v0, v1, v4, v5}, Lcom/eltechs/axs/xserver/KeyboardLayout;->setKeysymMapping(III)V

    .line 185
    sget-object v1, Lcom/eltechs/axs/KeyCodesX;->KEY_3:Lcom/eltechs/axs/KeyCodesX;

    invoke-virtual {v1}, Lcom/eltechs/axs/KeyCodesX;->getValue()I

    move-result v1

    const/16 v5, 0x33

    const/16 v6, 0x23

    invoke-virtual {v0, v1, v5, v6}, Lcom/eltechs/axs/xserver/KeyboardLayout;->setKeysymMapping(III)V

    .line 186
    sget-object v1, Lcom/eltechs/axs/KeyCodesX;->KEY_4:Lcom/eltechs/axs/KeyCodesX;

    invoke-virtual {v1}, Lcom/eltechs/axs/KeyCodesX;->getValue()I

    move-result v1

    const/16 v6, 0x34

    const/16 v7, 0x24

    invoke-virtual {v0, v1, v6, v7}, Lcom/eltechs/axs/xserver/KeyboardLayout;->setKeysymMapping(III)V

    .line 187
    sget-object v1, Lcom/eltechs/axs/KeyCodesX;->KEY_5:Lcom/eltechs/axs/KeyCodesX;

    invoke-virtual {v1}, Lcom/eltechs/axs/KeyCodesX;->getValue()I

    move-result v1

    const/16 v7, 0x35

    const/16 v8, 0x25

    invoke-virtual {v0, v1, v7, v8}, Lcom/eltechs/axs/xserver/KeyboardLayout;->setKeysymMapping(III)V

    .line 188
    sget-object v1, Lcom/eltechs/axs/KeyCodesX;->KEY_6:Lcom/eltechs/axs/KeyCodesX;

    invoke-virtual {v1}, Lcom/eltechs/axs/KeyCodesX;->getValue()I

    move-result v1

    const/16 v8, 0x36

    const/16 v9, 0x5e

    invoke-virtual {v0, v1, v8, v9}, Lcom/eltechs/axs/xserver/KeyboardLayout;->setKeysymMapping(III)V

    .line 189
    sget-object v1, Lcom/eltechs/axs/KeyCodesX;->KEY_7:Lcom/eltechs/axs/KeyCodesX;

    invoke-virtual {v1}, Lcom/eltechs/axs/KeyCodesX;->getValue()I

    move-result v1

    const/16 v9, 0x37

    const/16 v10, 0x26

    invoke-virtual {v0, v1, v9, v10}, Lcom/eltechs/axs/xserver/KeyboardLayout;->setKeysymMapping(III)V

    .line 190
    sget-object v1, Lcom/eltechs/axs/KeyCodesX;->KEY_8:Lcom/eltechs/axs/KeyCodesX;

    invoke-virtual {v1}, Lcom/eltechs/axs/KeyCodesX;->getValue()I

    move-result v1

    const/16 v10, 0x2a

    const/16 v11, 0x38

    invoke-virtual {v0, v1, v11, v10}, Lcom/eltechs/axs/xserver/KeyboardLayout;->setKeysymMapping(III)V

    .line 191
    sget-object v1, Lcom/eltechs/axs/KeyCodesX;->KEY_9:Lcom/eltechs/axs/KeyCodesX;

    invoke-virtual {v1}, Lcom/eltechs/axs/KeyCodesX;->getValue()I

    move-result v1

    const/16 v12, 0x39

    const/16 v13, 0x28

    invoke-virtual {v0, v1, v12, v13}, Lcom/eltechs/axs/xserver/KeyboardLayout;->setKeysymMapping(III)V

    .line 192
    sget-object v1, Lcom/eltechs/axs/KeyCodesX;->KEY_0:Lcom/eltechs/axs/KeyCodesX;

    invoke-virtual {v1}, Lcom/eltechs/axs/KeyCodesX;->getValue()I

    move-result v1

    const/16 v13, 0x30

    const/16 v14, 0x29

    invoke-virtual {v0, v1, v13, v14}, Lcom/eltechs/axs/xserver/KeyboardLayout;->setKeysymMapping(III)V

    .line 195
    sget-object v1, Lcom/eltechs/axs/KeyCodesX;->KEY_COMMA:Lcom/eltechs/axs/KeyCodesX;

    invoke-virtual {v1}, Lcom/eltechs/axs/KeyCodesX;->getValue()I

    move-result v1

    const/16 v14, 0x2c

    const/16 v15, 0x3c

    invoke-virtual {v0, v1, v14, v15}, Lcom/eltechs/axs/xserver/KeyboardLayout;->setKeysymMapping(III)V

    .line 196
    sget-object v1, Lcom/eltechs/axs/KeyCodesX;->KEY_PERIOD:Lcom/eltechs/axs/KeyCodesX;

    invoke-virtual {v1}, Lcom/eltechs/axs/KeyCodesX;->getValue()I

    move-result v1

    const/16 v14, 0x2e

    const/16 v15, 0x3e

    invoke-virtual {v0, v1, v14, v15}, Lcom/eltechs/axs/xserver/KeyboardLayout;->setKeysymMapping(III)V

    .line 197
    sget-object v1, Lcom/eltechs/axs/KeyCodesX;->KEY_SEMICOLON:Lcom/eltechs/axs/KeyCodesX;

    invoke-virtual {v1}, Lcom/eltechs/axs/KeyCodesX;->getValue()I

    move-result v1

    const/16 v14, 0x3b

    const/16 v15, 0x3a

    invoke-virtual {v0, v1, v14, v15}, Lcom/eltechs/axs/xserver/KeyboardLayout;->setKeysymMapping(III)V

    .line 198
    sget-object v1, Lcom/eltechs/axs/KeyCodesX;->KEY_APOSTROPHE:Lcom/eltechs/axs/KeyCodesX;

    invoke-virtual {v1}, Lcom/eltechs/axs/KeyCodesX;->getValue()I

    move-result v1

    const/16 v14, 0x27

    const/16 v15, 0x22

    invoke-virtual {v0, v1, v14, v15}, Lcom/eltechs/axs/xserver/KeyboardLayout;->setKeysymMapping(III)V

    .line 201
    sget-object v1, Lcom/eltechs/axs/KeyCodesX;->KEY_BRACKET_LEFT:Lcom/eltechs/axs/KeyCodesX;

    invoke-virtual {v1}, Lcom/eltechs/axs/KeyCodesX;->getValue()I

    move-result v1

    const/16 v14, 0x5b

    const/16 v15, 0x7b

    invoke-virtual {v0, v1, v14, v15}, Lcom/eltechs/axs/xserver/KeyboardLayout;->setKeysymMapping(III)V

    .line 202
    sget-object v1, Lcom/eltechs/axs/KeyCodesX;->KEY_BRACKET_RIGHT:Lcom/eltechs/axs/KeyCodesX;

    invoke-virtual {v1}, Lcom/eltechs/axs/KeyCodesX;->getValue()I

    move-result v1

    const/16 v14, 0x5d

    const/16 v15, 0x7d

    invoke-virtual {v0, v1, v14, v15}, Lcom/eltechs/axs/xserver/KeyboardLayout;->setKeysymMapping(III)V

    .line 205
    sget-object v1, Lcom/eltechs/axs/KeyCodesX;->KEY_GRAVE:Lcom/eltechs/axs/KeyCodesX;

    invoke-virtual {v1}, Lcom/eltechs/axs/KeyCodesX;->getValue()I

    move-result v1

    const/16 v14, 0x60

    const/16 v15, 0x7e

    invoke-virtual {v0, v1, v14, v15}, Lcom/eltechs/axs/xserver/KeyboardLayout;->setKeysymMapping(III)V

    .line 206
    sget-object v1, Lcom/eltechs/axs/KeyCodesX;->KEY_MINUS:Lcom/eltechs/axs/KeyCodesX;

    invoke-virtual {v1}, Lcom/eltechs/axs/KeyCodesX;->getValue()I

    move-result v1

    const/16 v14, 0x2d

    const/16 v15, 0x5f

    invoke-virtual {v0, v1, v14, v15}, Lcom/eltechs/axs/xserver/KeyboardLayout;->setKeysymMapping(III)V

    .line 207
    sget-object v1, Lcom/eltechs/axs/KeyCodesX;->KEY_EQUAL:Lcom/eltechs/axs/KeyCodesX;

    invoke-virtual {v1}, Lcom/eltechs/axs/KeyCodesX;->getValue()I

    move-result v1

    const/16 v15, 0x2b

    const/16 v3, 0x3d

    invoke-virtual {v0, v1, v3, v15}, Lcom/eltechs/axs/xserver/KeyboardLayout;->setKeysymMapping(III)V

    .line 208
    sget-object v1, Lcom/eltechs/axs/KeyCodesX;->KEY_SLASH:Lcom/eltechs/axs/KeyCodesX;

    invoke-virtual {v1}, Lcom/eltechs/axs/KeyCodesX;->getValue()I

    move-result v1

    const/16 v3, 0x2f

    const/16 v12, 0x3f

    invoke-virtual {v0, v1, v3, v12}, Lcom/eltechs/axs/xserver/KeyboardLayout;->setKeysymMapping(III)V

    .line 209
    sget-object v1, Lcom/eltechs/axs/KeyCodesX;->KEY_BACKSLASH:Lcom/eltechs/axs/KeyCodesX;

    invoke-virtual {v1}, Lcom/eltechs/axs/KeyCodesX;->getValue()I

    move-result v1

    const/16 v12, 0x5c

    const/16 v11, 0x7c

    invoke-virtual {v0, v1, v12, v11}, Lcom/eltechs/axs/xserver/KeyboardLayout;->setKeysymMapping(III)V

    .line 212
    sget-object v1, Lcom/eltechs/axs/KeyCodesX;->KEY_KP_DIV:Lcom/eltechs/axs/KeyCodesX;

    invoke-virtual {v1}, Lcom/eltechs/axs/KeyCodesX;->getValue()I

    move-result v1

    invoke-virtual {v0, v1, v3, v3}, Lcom/eltechs/axs/xserver/KeyboardLayout;->setKeysymMapping(III)V

    .line 213
    sget-object v1, Lcom/eltechs/axs/KeyCodesX;->KEY_KP_MULTIPLY:Lcom/eltechs/axs/KeyCodesX;

    invoke-virtual {v1}, Lcom/eltechs/axs/KeyCodesX;->getValue()I

    move-result v1

    invoke-virtual {v0, v1, v10, v10}, Lcom/eltechs/axs/xserver/KeyboardLayout;->setKeysymMapping(III)V

    .line 214
    sget-object v1, Lcom/eltechs/axs/KeyCodesX;->KEY_KP_SUB:Lcom/eltechs/axs/KeyCodesX;

    invoke-virtual {v1}, Lcom/eltechs/axs/KeyCodesX;->getValue()I

    move-result v1

    invoke-virtual {v0, v1, v14, v14}, Lcom/eltechs/axs/xserver/KeyboardLayout;->setKeysymMapping(III)V

    .line 215
    sget-object v1, Lcom/eltechs/axs/KeyCodesX;->KEY_KP_ADD:Lcom/eltechs/axs/KeyCodesX;

    invoke-virtual {v1}, Lcom/eltechs/axs/KeyCodesX;->getValue()I

    move-result v1

    invoke-virtual {v0, v1, v15, v15}, Lcom/eltechs/axs/xserver/KeyboardLayout;->setKeysymMapping(III)V

    .line 216
    sget-object v1, Lcom/eltechs/axs/KeyCodesX;->KEY_KP_0:Lcom/eltechs/axs/KeyCodesX;

    invoke-virtual {v1}, Lcom/eltechs/axs/KeyCodesX;->getValue()I

    move-result v1

    invoke-virtual {v0, v1, v13, v13}, Lcom/eltechs/axs/xserver/KeyboardLayout;->setKeysymMapping(III)V

    .line 217
    sget-object v1, Lcom/eltechs/axs/KeyCodesX;->KEY_KP_1:Lcom/eltechs/axs/KeyCodesX;

    invoke-virtual {v1}, Lcom/eltechs/axs/KeyCodesX;->getValue()I

    move-result v1

    invoke-virtual {v0, v1, v2, v2}, Lcom/eltechs/axs/xserver/KeyboardLayout;->setKeysymMapping(III)V

    .line 218
    sget-object v1, Lcom/eltechs/axs/KeyCodesX;->KEY_KP_2:Lcom/eltechs/axs/KeyCodesX;

    invoke-virtual {v1}, Lcom/eltechs/axs/KeyCodesX;->getValue()I

    move-result v1

    invoke-virtual {v0, v1, v4, v4}, Lcom/eltechs/axs/xserver/KeyboardLayout;->setKeysymMapping(III)V

    .line 219
    sget-object v1, Lcom/eltechs/axs/KeyCodesX;->KEY_KP_3:Lcom/eltechs/axs/KeyCodesX;

    invoke-virtual {v1}, Lcom/eltechs/axs/KeyCodesX;->getValue()I

    move-result v1

    invoke-virtual {v0, v1, v5, v5}, Lcom/eltechs/axs/xserver/KeyboardLayout;->setKeysymMapping(III)V

    .line 220
    sget-object v1, Lcom/eltechs/axs/KeyCodesX;->KEY_KP_4:Lcom/eltechs/axs/KeyCodesX;

    invoke-virtual {v1}, Lcom/eltechs/axs/KeyCodesX;->getValue()I

    move-result v1

    invoke-virtual {v0, v1, v6, v6}, Lcom/eltechs/axs/xserver/KeyboardLayout;->setKeysymMapping(III)V

    .line 221
    sget-object v1, Lcom/eltechs/axs/KeyCodesX;->KEY_KP_5:Lcom/eltechs/axs/KeyCodesX;

    invoke-virtual {v1}, Lcom/eltechs/axs/KeyCodesX;->getValue()I

    move-result v1

    invoke-virtual {v0, v1, v7, v7}, Lcom/eltechs/axs/xserver/KeyboardLayout;->setKeysymMapping(III)V

    .line 222
    sget-object v1, Lcom/eltechs/axs/KeyCodesX;->KEY_KP_6:Lcom/eltechs/axs/KeyCodesX;

    invoke-virtual {v1}, Lcom/eltechs/axs/KeyCodesX;->getValue()I

    move-result v1

    invoke-virtual {v0, v1, v8, v8}, Lcom/eltechs/axs/xserver/KeyboardLayout;->setKeysymMapping(III)V

    .line 223
    sget-object v1, Lcom/eltechs/axs/KeyCodesX;->KEY_KP_7:Lcom/eltechs/axs/KeyCodesX;

    invoke-virtual {v1}, Lcom/eltechs/axs/KeyCodesX;->getValue()I

    move-result v1

    invoke-virtual {v0, v1, v9, v9}, Lcom/eltechs/axs/xserver/KeyboardLayout;->setKeysymMapping(III)V

    .line 224
    sget-object v1, Lcom/eltechs/axs/KeyCodesX;->KEY_KP_8:Lcom/eltechs/axs/KeyCodesX;

    invoke-virtual {v1}, Lcom/eltechs/axs/KeyCodesX;->getValue()I

    move-result v1

    const/16 v2, 0x38

    invoke-virtual {v0, v1, v2, v2}, Lcom/eltechs/axs/xserver/KeyboardLayout;->setKeysymMapping(III)V

    .line 225
    sget-object v1, Lcom/eltechs/axs/KeyCodesX;->KEY_KP_9:Lcom/eltechs/axs/KeyCodesX;

    invoke-virtual {v1}, Lcom/eltechs/axs/KeyCodesX;->getValue()I

    move-result v1

    const/16 v2, 0x39

    invoke-virtual {v0, v1, v2, v2}, Lcom/eltechs/axs/xserver/KeyboardLayout;->setKeysymMapping(III)V

    .line 227
    sget-object v1, Lcom/eltechs/axs/KeyCodesX;->KEY_KP_DEL:Lcom/eltechs/axs/KeyCodesX;

    invoke-virtual {v1}, Lcom/eltechs/axs/KeyCodesX;->getValue()I

    move-result v1

    sget-object v2, Lcom/eltechs/axs/xserver/keysyms/KeypadKeysyms;->KEYPAD_DEL:Lcom/eltechs/axs/xserver/keysyms/KeypadKeysyms;

    invoke-virtual {v2}, Lcom/eltechs/axs/xserver/keysyms/KeypadKeysyms;->getKeysym()I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/eltechs/axs/xserver/KeyboardLayout;->setKeysymMapping(III)V

    .line 230
    sget-object v1, Lcom/eltechs/axs/KeyCodesX;->KEY_F1:Lcom/eltechs/axs/KeyCodesX;

    invoke-virtual {v1}, Lcom/eltechs/axs/KeyCodesX;->getValue()I

    move-result v1

    sget-object v2, Lcom/eltechs/axs/xserver/keysyms/FunctionKeysyms;->F1:Lcom/eltechs/axs/xserver/keysyms/FunctionKeysyms;

    invoke-virtual {v2}, Lcom/eltechs/axs/xserver/keysyms/FunctionKeysyms;->getKeysym()I

    move-result v2

    invoke-virtual {v0, v1, v2, v3}, Lcom/eltechs/axs/xserver/KeyboardLayout;->setKeysymMapping(III)V

    .line 231
    sget-object v1, Lcom/eltechs/axs/KeyCodesX;->KEY_F2:Lcom/eltechs/axs/KeyCodesX;

    invoke-virtual {v1}, Lcom/eltechs/axs/KeyCodesX;->getValue()I

    move-result v1

    sget-object v2, Lcom/eltechs/axs/xserver/keysyms/FunctionKeysyms;->F2:Lcom/eltechs/axs/xserver/keysyms/FunctionKeysyms;

    invoke-virtual {v2}, Lcom/eltechs/axs/xserver/keysyms/FunctionKeysyms;->getKeysym()I

    move-result v2

    invoke-virtual {v0, v1, v2, v3}, Lcom/eltechs/axs/xserver/KeyboardLayout;->setKeysymMapping(III)V

    .line 232
    sget-object v1, Lcom/eltechs/axs/KeyCodesX;->KEY_F3:Lcom/eltechs/axs/KeyCodesX;

    invoke-virtual {v1}, Lcom/eltechs/axs/KeyCodesX;->getValue()I

    move-result v1

    sget-object v2, Lcom/eltechs/axs/xserver/keysyms/FunctionKeysyms;->F3:Lcom/eltechs/axs/xserver/keysyms/FunctionKeysyms;

    invoke-virtual {v2}, Lcom/eltechs/axs/xserver/keysyms/FunctionKeysyms;->getKeysym()I

    move-result v2

    invoke-virtual {v0, v1, v2, v3}, Lcom/eltechs/axs/xserver/KeyboardLayout;->setKeysymMapping(III)V

    .line 233
    sget-object v1, Lcom/eltechs/axs/KeyCodesX;->KEY_F4:Lcom/eltechs/axs/KeyCodesX;

    invoke-virtual {v1}, Lcom/eltechs/axs/KeyCodesX;->getValue()I

    move-result v1

    sget-object v2, Lcom/eltechs/axs/xserver/keysyms/FunctionKeysyms;->F4:Lcom/eltechs/axs/xserver/keysyms/FunctionKeysyms;

    invoke-virtual {v2}, Lcom/eltechs/axs/xserver/keysyms/FunctionKeysyms;->getKeysym()I

    move-result v2

    invoke-virtual {v0, v1, v2, v3}, Lcom/eltechs/axs/xserver/KeyboardLayout;->setKeysymMapping(III)V

    .line 234
    sget-object v1, Lcom/eltechs/axs/KeyCodesX;->KEY_F5:Lcom/eltechs/axs/KeyCodesX;

    invoke-virtual {v1}, Lcom/eltechs/axs/KeyCodesX;->getValue()I

    move-result v1

    sget-object v2, Lcom/eltechs/axs/xserver/keysyms/FunctionKeysyms;->F5:Lcom/eltechs/axs/xserver/keysyms/FunctionKeysyms;

    invoke-virtual {v2}, Lcom/eltechs/axs/xserver/keysyms/FunctionKeysyms;->getKeysym()I

    move-result v2

    invoke-virtual {v0, v1, v2, v3}, Lcom/eltechs/axs/xserver/KeyboardLayout;->setKeysymMapping(III)V

    .line 235
    sget-object v1, Lcom/eltechs/axs/KeyCodesX;->KEY_F6:Lcom/eltechs/axs/KeyCodesX;

    invoke-virtual {v1}, Lcom/eltechs/axs/KeyCodesX;->getValue()I

    move-result v1

    sget-object v2, Lcom/eltechs/axs/xserver/keysyms/FunctionKeysyms;->F6:Lcom/eltechs/axs/xserver/keysyms/FunctionKeysyms;

    invoke-virtual {v2}, Lcom/eltechs/axs/xserver/keysyms/FunctionKeysyms;->getKeysym()I

    move-result v2

    invoke-virtual {v0, v1, v2, v3}, Lcom/eltechs/axs/xserver/KeyboardLayout;->setKeysymMapping(III)V

    .line 236
    sget-object v1, Lcom/eltechs/axs/KeyCodesX;->KEY_F7:Lcom/eltechs/axs/KeyCodesX;

    invoke-virtual {v1}, Lcom/eltechs/axs/KeyCodesX;->getValue()I

    move-result v1

    sget-object v2, Lcom/eltechs/axs/xserver/keysyms/FunctionKeysyms;->F7:Lcom/eltechs/axs/xserver/keysyms/FunctionKeysyms;

    invoke-virtual {v2}, Lcom/eltechs/axs/xserver/keysyms/FunctionKeysyms;->getKeysym()I

    move-result v2

    invoke-virtual {v0, v1, v2, v3}, Lcom/eltechs/axs/xserver/KeyboardLayout;->setKeysymMapping(III)V

    .line 237
    sget-object v1, Lcom/eltechs/axs/KeyCodesX;->KEY_F8:Lcom/eltechs/axs/KeyCodesX;

    invoke-virtual {v1}, Lcom/eltechs/axs/KeyCodesX;->getValue()I

    move-result v1

    sget-object v2, Lcom/eltechs/axs/xserver/keysyms/FunctionKeysyms;->F8:Lcom/eltechs/axs/xserver/keysyms/FunctionKeysyms;

    invoke-virtual {v2}, Lcom/eltechs/axs/xserver/keysyms/FunctionKeysyms;->getKeysym()I

    move-result v2

    invoke-virtual {v0, v1, v2, v3}, Lcom/eltechs/axs/xserver/KeyboardLayout;->setKeysymMapping(III)V

    .line 238
    sget-object v1, Lcom/eltechs/axs/KeyCodesX;->KEY_F9:Lcom/eltechs/axs/KeyCodesX;

    invoke-virtual {v1}, Lcom/eltechs/axs/KeyCodesX;->getValue()I

    move-result v1

    sget-object v2, Lcom/eltechs/axs/xserver/keysyms/FunctionKeysyms;->F9:Lcom/eltechs/axs/xserver/keysyms/FunctionKeysyms;

    invoke-virtual {v2}, Lcom/eltechs/axs/xserver/keysyms/FunctionKeysyms;->getKeysym()I

    move-result v2

    invoke-virtual {v0, v1, v2, v3}, Lcom/eltechs/axs/xserver/KeyboardLayout;->setKeysymMapping(III)V

    .line 239
    sget-object v1, Lcom/eltechs/axs/KeyCodesX;->KEY_F10:Lcom/eltechs/axs/KeyCodesX;

    invoke-virtual {v1}, Lcom/eltechs/axs/KeyCodesX;->getValue()I

    move-result v1

    sget-object v2, Lcom/eltechs/axs/xserver/keysyms/FunctionKeysyms;->F10:Lcom/eltechs/axs/xserver/keysyms/FunctionKeysyms;

    invoke-virtual {v2}, Lcom/eltechs/axs/xserver/keysyms/FunctionKeysyms;->getKeysym()I

    move-result v2

    invoke-virtual {v0, v1, v2, v3}, Lcom/eltechs/axs/xserver/KeyboardLayout;->setKeysymMapping(III)V

    .line 240
    sget-object v1, Lcom/eltechs/axs/KeyCodesX;->KEY_F11:Lcom/eltechs/axs/KeyCodesX;

    invoke-virtual {v1}, Lcom/eltechs/axs/KeyCodesX;->getValue()I

    move-result v1

    sget-object v2, Lcom/eltechs/axs/xserver/keysyms/FunctionKeysyms;->F11:Lcom/eltechs/axs/xserver/keysyms/FunctionKeysyms;

    invoke-virtual {v2}, Lcom/eltechs/axs/xserver/keysyms/FunctionKeysyms;->getKeysym()I

    move-result v2

    invoke-virtual {v0, v1, v2, v3}, Lcom/eltechs/axs/xserver/KeyboardLayout;->setKeysymMapping(III)V

    .line 241
    sget-object v1, Lcom/eltechs/axs/KeyCodesX;->KEY_F12:Lcom/eltechs/axs/KeyCodesX;

    invoke-virtual {v1}, Lcom/eltechs/axs/KeyCodesX;->getValue()I

    move-result v1

    sget-object v2, Lcom/eltechs/axs/xserver/keysyms/FunctionKeysyms;->F12:Lcom/eltechs/axs/xserver/keysyms/FunctionKeysyms;

    invoke-virtual {v2}, Lcom/eltechs/axs/xserver/keysyms/FunctionKeysyms;->getKeysym()I

    move-result v2

    invoke-virtual {v0, v1, v2, v3}, Lcom/eltechs/axs/xserver/KeyboardLayout;->setKeysymMapping(III)V

    .line 243
    new-instance v1, Lcom/eltechs/axs/xserver/KeyboardModifiersLayout;

    invoke-direct {v1}, Lcom/eltechs/axs/xserver/KeyboardModifiersLayout;-><init>()V

    .line 245
    sget-object v2, Lcom/eltechs/axs/KeyCodesX;->KEY_SHIFT_LEFT:Lcom/eltechs/axs/KeyCodesX;

    invoke-virtual {v2}, Lcom/eltechs/axs/KeyCodesX;->getValue()I

    move-result v2

    int-to-byte v2, v2

    sget-object v3, Lcom/eltechs/axs/xserver/KeyButNames;->SHIFT:Lcom/eltechs/axs/xserver/KeyButNames;

    invoke-virtual {v1, v2, v3}, Lcom/eltechs/axs/xserver/KeyboardModifiersLayout;->setKeycodeToModifier(BLcom/eltechs/axs/xserver/KeyButNames;)V

    .line 246
    sget-object v2, Lcom/eltechs/axs/KeyCodesX;->KEY_SHIFT_RIGHT:Lcom/eltechs/axs/KeyCodesX;

    invoke-virtual {v2}, Lcom/eltechs/axs/KeyCodesX;->getValue()I

    move-result v2

    int-to-byte v2, v2

    sget-object v3, Lcom/eltechs/axs/xserver/KeyButNames;->SHIFT:Lcom/eltechs/axs/xserver/KeyButNames;

    invoke-virtual {v1, v2, v3}, Lcom/eltechs/axs/xserver/KeyboardModifiersLayout;->setKeycodeToModifier(BLcom/eltechs/axs/xserver/KeyButNames;)V

    .line 247
    sget-object v2, Lcom/eltechs/axs/KeyCodesX;->KEY_CONTROL_LEFT:Lcom/eltechs/axs/KeyCodesX;

    invoke-virtual {v2}, Lcom/eltechs/axs/KeyCodesX;->getValue()I

    move-result v2

    int-to-byte v2, v2

    sget-object v3, Lcom/eltechs/axs/xserver/KeyButNames;->CONTROL:Lcom/eltechs/axs/xserver/KeyButNames;

    invoke-virtual {v1, v2, v3}, Lcom/eltechs/axs/xserver/KeyboardModifiersLayout;->setKeycodeToModifier(BLcom/eltechs/axs/xserver/KeyButNames;)V

    .line 248
    sget-object v2, Lcom/eltechs/axs/KeyCodesX;->KEY_CONTROL_RIGHT:Lcom/eltechs/axs/KeyCodesX;

    invoke-virtual {v2}, Lcom/eltechs/axs/KeyCodesX;->getValue()I

    move-result v2

    int-to-byte v2, v2

    sget-object v3, Lcom/eltechs/axs/xserver/KeyButNames;->CONTROL:Lcom/eltechs/axs/xserver/KeyButNames;

    invoke-virtual {v1, v2, v3}, Lcom/eltechs/axs/xserver/KeyboardModifiersLayout;->setKeycodeToModifier(BLcom/eltechs/axs/xserver/KeyButNames;)V

    .line 249
    sget-object v2, Lcom/eltechs/axs/KeyCodesX;->KEY_ALT_LEFT:Lcom/eltechs/axs/KeyCodesX;

    invoke-virtual {v2}, Lcom/eltechs/axs/KeyCodesX;->getValue()I

    move-result v2

    int-to-byte v2, v2

    sget-object v3, Lcom/eltechs/axs/xserver/KeyButNames;->ALT:Lcom/eltechs/axs/xserver/KeyButNames;

    invoke-virtual {v1, v2, v3}, Lcom/eltechs/axs/xserver/KeyboardModifiersLayout;->setKeycodeToModifier(BLcom/eltechs/axs/xserver/KeyButNames;)V

    .line 250
    sget-object v2, Lcom/eltechs/axs/KeyCodesX;->KEY_ALT_RIGHT:Lcom/eltechs/axs/KeyCodesX;

    invoke-virtual {v2}, Lcom/eltechs/axs/KeyCodesX;->getValue()I

    move-result v2

    int-to-byte v2, v2

    sget-object v3, Lcom/eltechs/axs/xserver/KeyButNames;->ALT:Lcom/eltechs/axs/xserver/KeyButNames;

    invoke-virtual {v1, v2, v3}, Lcom/eltechs/axs/xserver/KeyboardModifiersLayout;->setKeycodeToModifier(BLcom/eltechs/axs/xserver/KeyButNames;)V

    .line 251
    sget-object v2, Lcom/eltechs/axs/KeyCodesX;->KEY_NUM_LOCK:Lcom/eltechs/axs/KeyCodesX;

    invoke-virtual {v2}, Lcom/eltechs/axs/KeyCodesX;->getValue()I

    move-result v2

    int-to-byte v2, v2

    sget-object v3, Lcom/eltechs/axs/xserver/KeyButNames;->NUM_LOCK:Lcom/eltechs/axs/xserver/KeyButNames;

    invoke-virtual {v1, v2, v3}, Lcom/eltechs/axs/xserver/KeyboardModifiersLayout;->setKeycodeToModifier(BLcom/eltechs/axs/xserver/KeyButNames;)V

    .line 252
    sget-object v2, Lcom/eltechs/axs/KeyCodesX;->KEY_CAPS_LOCK:Lcom/eltechs/axs/KeyCodesX;

    invoke-virtual {v2}, Lcom/eltechs/axs/KeyCodesX;->getValue()I

    move-result v2

    int-to-byte v2, v2

    sget-object v3, Lcom/eltechs/axs/xserver/KeyButNames;->CAPS_LOCK:Lcom/eltechs/axs/xserver/KeyButNames;

    invoke-virtual {v1, v2, v3}, Lcom/eltechs/axs/xserver/KeyboardModifiersLayout;->setKeycodeToModifier(BLcom/eltechs/axs/xserver/KeyButNames;)V

    .line 254
    sget-object v2, Lcom/eltechs/axs/xserver/KeyButNames;->CAPS_LOCK:Lcom/eltechs/axs/xserver/KeyButNames;

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Lcom/eltechs/axs/xserver/KeyboardModifiersLayout;->setModifierSticky(Lcom/eltechs/axs/xserver/KeyButNames;Z)V

    .line 255
    sget-object v2, Lcom/eltechs/axs/xserver/KeyButNames;->NUM_LOCK:Lcom/eltechs/axs/xserver/KeyButNames;

    invoke-virtual {v1, v2, v3}, Lcom/eltechs/axs/xserver/KeyboardModifiersLayout;->setModifierSticky(Lcom/eltechs/axs/xserver/KeyButNames;Z)V

    .line 257
    new-instance v2, Lcom/eltechs/axs/xserver/KeyboardModel;

    new-array v3, v3, [Lcom/eltechs/axs/xserver/KeyboardLayout;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    invoke-direct {v2, v1, v3}, Lcom/eltechs/axs/xserver/KeyboardModel;-><init>(Lcom/eltechs/axs/xserver/KeyboardModifiersLayout;[Lcom/eltechs/axs/xserver/KeyboardLayout;)V

    return-object v2
.end method

.method private createXServer(Lcom/eltechs/axs/xserver/ScreenInfo;Lcom/eltechs/axs/xserver/KeyboardModel;)Lcom/eltechs/axs/xserver/XServer;
    .locals 8

    .line 96
    iget v0, p1, Lcom/eltechs/axs/xserver/ScreenInfo;->depth:I

    invoke-static {v0}, Lcom/eltechs/axs/xserver/impl/drawables/gl/GLDrawablesFactory;->create(I)Lcom/eltechs/axs/xserver/impl/drawables/gl/GLDrawablesFactory;

    move-result-object v4

    .line 98
    invoke-virtual {p0}, Lcom/eltechs/axs/environmentService/components/XServerComponent;->getEnvironment()Lcom/eltechs/axs/environmentService/AXSEnvironment;

    move-result-object v0

    const-class v1, Lcom/eltechs/axs/environmentService/components/SysVIPCEmulatorComponent;

    invoke-virtual {v0, v1}, Lcom/eltechs/axs/environmentService/AXSEnvironment;->getComponent(Ljava/lang/Class;)Lcom/eltechs/axs/environmentService/EnvironmentComponent;

    move-result-object v0

    check-cast v0, Lcom/eltechs/axs/environmentService/components/SysVIPCEmulatorComponent;

    if-eqz v0, :cond_0

    .line 99
    invoke-virtual {v0}, Lcom/eltechs/axs/environmentService/components/SysVIPCEmulatorComponent;->getShmEngine()Lcom/eltechs/axs/sysvipc/SHMEngine;

    move-result-object v0

    :goto_0
    move-object v5, v0

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 101
    :goto_1
    new-instance v0, Lcom/eltechs/axs/xserver/XServer;

    new-instance v6, Lcom/eltechs/axs/rendering/impl/virglRenderer/VirglRedererEngine;

    invoke-direct {v6}, Lcom/eltechs/axs/rendering/impl/virglRenderer/VirglRedererEngine;-><init>()V

    const/16 v7, 0x200

    move-object v1, v0

    move-object v2, p1

    move-object v3, p2

    invoke-direct/range {v1 .. v7}, Lcom/eltechs/axs/xserver/XServer;-><init>(Lcom/eltechs/axs/xserver/ScreenInfo;Lcom/eltechs/axs/xserver/KeyboardModel;Lcom/eltechs/axs/xserver/impl/drawables/DrawablesFactory;Lcom/eltechs/axs/sysvipc/SHMEngine;Lcom/eltechs/axs/rendering/RenderingEngine;I)V

    return-object v0
.end method

.method private startXConnector(Lcom/eltechs/axs/xserver/XServer;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 106
    iget-object v0, p0, Lcom/eltechs/axs/environmentService/components/XServerComponent;->socketConf:Lcom/eltechs/axs/xconnectors/epoll/UnixSocketConfiguration;

    new-instance v1, Lcom/eltechs/axs/xserver/client/XClientConnectionHandler;

    invoke-direct {v1, p1}, Lcom/eltechs/axs/xserver/client/XClientConnectionHandler;-><init>(Lcom/eltechs/axs/xserver/XServer;)V

    .line 109
    invoke-static {p1}, Lcom/eltechs/axs/proto/RootXRequestHandlerConfigurer;->createRequestHandler(Lcom/eltechs/axs/xserver/XServer;)Lcom/eltechs/axs/proto/input/impl/RootXRequestHandler;

    move-result-object p1

    .line 106
    invoke-static {v0, v1, p1}, Lcom/eltechs/axs/xconnectors/epoll/FairEpollConnector;->listenOnSpecifiedUnixSocket(Lcom/eltechs/axs/xconnectors/epoll/UnixSocketConfiguration;Lcom/eltechs/axs/proto/input/ConnectionHandler;Lcom/eltechs/axs/xconnectors/RequestHandler;)Lcom/eltechs/axs/xconnectors/epoll/FairEpollConnector;

    move-result-object p1

    iput-object p1, p0, Lcom/eltechs/axs/environmentService/components/XServerComponent;->connector:Lcom/eltechs/axs/xconnectors/epoll/FairEpollConnector;

    .line 111
    iget-object p1, p0, Lcom/eltechs/axs/environmentService/components/XServerComponent;->connector:Lcom/eltechs/axs/xconnectors/epoll/FairEpollConnector;

    const/high16 v0, 0x40000

    invoke-virtual {p1, v0}, Lcom/eltechs/axs/xconnectors/epoll/FairEpollConnector;->setInitialInputBufferCapacity(I)V

    .line 113
    iget-object p1, p0, Lcom/eltechs/axs/environmentService/components/XServerComponent;->connector:Lcom/eltechs/axs/xconnectors/epoll/FairEpollConnector;

    invoke-virtual {p1}, Lcom/eltechs/axs/xconnectors/epoll/FairEpollConnector;->start()V

    return-void
.end method


# virtual methods
.method public getDisplayNumber()I
    .locals 1

    .line 84
    iget v0, p0, Lcom/eltechs/axs/environmentService/components/XServerComponent;->displayNumber:I

    return v0
.end method

.method public getScreenInfo()Lcom/eltechs/axs/xserver/ScreenInfo;
    .locals 1

    .line 79
    iget-object v0, p0, Lcom/eltechs/axs/environmentService/components/XServerComponent;->screenInfo:Lcom/eltechs/axs/xserver/ScreenInfo;

    return-object v0
.end method

.method public getXServer()Lcom/eltechs/axs/xserver/XServer;
    .locals 2

    .line 89
    iget-object v0, p0, Lcom/eltechs/axs/environmentService/components/XServerComponent;->connector:Lcom/eltechs/axs/xconnectors/epoll/FairEpollConnector;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "X-server component is not yet started."

    invoke-static {v0, v1}, Lcom/eltechs/axs/helpers/Assert;->state(ZLjava/lang/String;)V

    .line 91
    iget-object v0, p0, Lcom/eltechs/axs/environmentService/components/XServerComponent;->xServer:Lcom/eltechs/axs/xserver/XServer;

    return-object v0
.end method

.method public start()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 54
    iget-object v0, p0, Lcom/eltechs/axs/environmentService/components/XServerComponent;->connector:Lcom/eltechs/axs/xconnectors/epoll/FairEpollConnector;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "X-server component is already started."

    invoke-static {v0, v1}, Lcom/eltechs/axs/helpers/Assert;->state(ZLjava/lang/String;)V

    .line 56
    invoke-static {}, Lcom/eltechs/axs/environmentService/components/XServerComponent;->createKeyboardModel()Lcom/eltechs/axs/xserver/KeyboardModel;

    move-result-object v0

    .line 58
    iget-object v1, p0, Lcom/eltechs/axs/environmentService/components/XServerComponent;->screenInfo:Lcom/eltechs/axs/xserver/ScreenInfo;

    invoke-direct {p0, v1, v0}, Lcom/eltechs/axs/environmentService/components/XServerComponent;->createXServer(Lcom/eltechs/axs/xserver/ScreenInfo;Lcom/eltechs/axs/xserver/KeyboardModel;)Lcom/eltechs/axs/xserver/XServer;

    move-result-object v0

    iput-object v0, p0, Lcom/eltechs/axs/environmentService/components/XServerComponent;->xServer:Lcom/eltechs/axs/xserver/XServer;

    .line 59
    new-instance v0, Lcom/eltechs/axs/desktopExperience/DesktopExperienceImpl;

    invoke-direct {v0}, Lcom/eltechs/axs/desktopExperience/DesktopExperienceImpl;-><init>()V

    iput-object v0, p0, Lcom/eltechs/axs/environmentService/components/XServerComponent;->desktopExperience:Lcom/eltechs/axs/xserver/DesktopExperience;

    .line 60
    iget-object v0, p0, Lcom/eltechs/axs/environmentService/components/XServerComponent;->desktopExperience:Lcom/eltechs/axs/xserver/DesktopExperience;

    iget-object v1, p0, Lcom/eltechs/axs/environmentService/components/XServerComponent;->xServer:Lcom/eltechs/axs/xserver/XServer;

    invoke-interface {v0, v1}, Lcom/eltechs/axs/xserver/DesktopExperience;->attachToXServer(Lcom/eltechs/axs/xserver/XServer;)V

    .line 62
    iget-object v0, p0, Lcom/eltechs/axs/environmentService/components/XServerComponent;->xServer:Lcom/eltechs/axs/xserver/XServer;

    invoke-direct {p0, v0}, Lcom/eltechs/axs/environmentService/components/XServerComponent;->startXConnector(Lcom/eltechs/axs/xserver/XServer;)V

    return-void
.end method

.method public stop()V
    .locals 2

    .line 68
    iget-object v0, p0, Lcom/eltechs/axs/environmentService/components/XServerComponent;->connector:Lcom/eltechs/axs/xconnectors/epoll/FairEpollConnector;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "X-server component is not yet started."

    invoke-static {v0, v1}, Lcom/eltechs/axs/helpers/Assert;->state(ZLjava/lang/String;)V

    .line 70
    :try_start_0
    iget-object v0, p0, Lcom/eltechs/axs/environmentService/components/XServerComponent;->connector:Lcom/eltechs/axs/xconnectors/epoll/FairEpollConnector;

    invoke-virtual {v0}, Lcom/eltechs/axs/xconnectors/epoll/FairEpollConnector;->stop()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    const/4 v0, 0x0

    .line 72
    iput-object v0, p0, Lcom/eltechs/axs/environmentService/components/XServerComponent;->xServer:Lcom/eltechs/axs/xserver/XServer;

    .line 73
    iput-object v0, p0, Lcom/eltechs/axs/environmentService/components/XServerComponent;->desktopExperience:Lcom/eltechs/axs/xserver/DesktopExperience;

    .line 74
    iput-object v0, p0, Lcom/eltechs/axs/environmentService/components/XServerComponent;->connector:Lcom/eltechs/axs/xconnectors/epoll/FairEpollConnector;

    return-void
.end method
