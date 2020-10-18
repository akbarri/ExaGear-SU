.class public Lcom/eltechs/axs/Keyboard;
.super Ljava/lang/Object;
.source "Keyboard.java"


# instance fields
.field private final AKeycodeToXKeycodeMap:[Lcom/eltechs/axs/KeyCodesX;

.field private final UnicodeToXKeyMap:[Lcom/eltechs/axs/Keyboard$XKey;

.field private final reporter:Lcom/eltechs/axs/KeyEventReporter;


# direct methods
.method public constructor <init>(Lcom/eltechs/axs/KeyEventReporter;)V
    .locals 0

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    iput-object p1, p0, Lcom/eltechs/axs/Keyboard;->reporter:Lcom/eltechs/axs/KeyEventReporter;

    .line 48
    invoke-static {}, Landroid/view/KeyEvent;->getMaxKeyCode()I

    move-result p1

    add-int/lit8 p1, p1, 0x1

    new-array p1, p1, [Lcom/eltechs/axs/KeyCodesX;

    iput-object p1, p0, Lcom/eltechs/axs/Keyboard;->AKeycodeToXKeycodeMap:[Lcom/eltechs/axs/KeyCodesX;

    const/high16 p1, 0x10000

    .line 49
    new-array p1, p1, [Lcom/eltechs/axs/Keyboard$XKey;

    iput-object p1, p0, Lcom/eltechs/axs/Keyboard;->UnicodeToXKeyMap:[Lcom/eltechs/axs/Keyboard$XKey;

    .line 51
    invoke-direct {p0}, Lcom/eltechs/axs/Keyboard;->constructAKeycodeToXKeycodeMap()V

    .line 52
    invoke-direct {p0}, Lcom/eltechs/axs/Keyboard;->constructUnicodeToXKeyMap()V

    return-void
.end method

.method private constructAKeycodeToXKeycodeMap()V
    .locals 4

    .line 25
    iget-object v0, p0, Lcom/eltechs/axs/Keyboard;->AKeycodeToXKeycodeMap:[Lcom/eltechs/axs/KeyCodesX;

    sget-object v1, Lcom/eltechs/axs/KeyCodesX;->KEY_ESC:Lcom/eltechs/axs/KeyCodesX;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    .line 26
    iget-object v0, p0, Lcom/eltechs/axs/Keyboard;->AKeycodeToXKeycodeMap:[Lcom/eltechs/axs/KeyCodesX;

    sget-object v1, Lcom/eltechs/axs/KeyCodesX;->KEY_RETURN:Lcom/eltechs/axs/KeyCodesX;

    const/16 v2, 0x42

    aput-object v1, v0, v2

    .line 27
    iget-object v0, p0, Lcom/eltechs/axs/Keyboard;->AKeycodeToXKeycodeMap:[Lcom/eltechs/axs/KeyCodesX;

    sget-object v1, Lcom/eltechs/axs/KeyCodesX;->KEY_LEFT:Lcom/eltechs/axs/KeyCodesX;

    const/16 v2, 0x15

    aput-object v1, v0, v2

    .line 28
    iget-object v0, p0, Lcom/eltechs/axs/Keyboard;->AKeycodeToXKeycodeMap:[Lcom/eltechs/axs/KeyCodesX;

    sget-object v1, Lcom/eltechs/axs/KeyCodesX;->KEY_RIGHT:Lcom/eltechs/axs/KeyCodesX;

    const/16 v2, 0x16

    aput-object v1, v0, v2

    .line 29
    iget-object v0, p0, Lcom/eltechs/axs/Keyboard;->AKeycodeToXKeycodeMap:[Lcom/eltechs/axs/KeyCodesX;

    sget-object v1, Lcom/eltechs/axs/KeyCodesX;->KEY_UP:Lcom/eltechs/axs/KeyCodesX;

    const/16 v2, 0x13

    aput-object v1, v0, v2

    .line 30
    iget-object v0, p0, Lcom/eltechs/axs/Keyboard;->AKeycodeToXKeycodeMap:[Lcom/eltechs/axs/KeyCodesX;

    sget-object v1, Lcom/eltechs/axs/KeyCodesX;->KEY_DOWN:Lcom/eltechs/axs/KeyCodesX;

    const/16 v2, 0x14

    aput-object v1, v0, v2

    .line 31
    iget-object v0, p0, Lcom/eltechs/axs/Keyboard;->AKeycodeToXKeycodeMap:[Lcom/eltechs/axs/KeyCodesX;

    sget-object v1, Lcom/eltechs/axs/KeyCodesX;->KEY_BACKSPACE:Lcom/eltechs/axs/KeyCodesX;

    const/16 v2, 0x43

    aput-object v1, v0, v2

    .line 32
    iget-object v0, p0, Lcom/eltechs/axs/Keyboard;->AKeycodeToXKeycodeMap:[Lcom/eltechs/axs/KeyCodesX;

    sget-object v1, Lcom/eltechs/axs/KeyCodesX;->KEY_INSERT:Lcom/eltechs/axs/KeyCodesX;

    const/16 v2, 0x7c

    aput-object v1, v0, v2

    .line 33
    iget-object v0, p0, Lcom/eltechs/axs/Keyboard;->AKeycodeToXKeycodeMap:[Lcom/eltechs/axs/KeyCodesX;

    sget-object v1, Lcom/eltechs/axs/KeyCodesX;->KEY_DELETE:Lcom/eltechs/axs/KeyCodesX;

    const/16 v2, 0x70

    aput-object v1, v0, v2

    .line 34
    iget-object v0, p0, Lcom/eltechs/axs/Keyboard;->AKeycodeToXKeycodeMap:[Lcom/eltechs/axs/KeyCodesX;

    sget-object v1, Lcom/eltechs/axs/KeyCodesX;->KEY_HOME:Lcom/eltechs/axs/KeyCodesX;

    const/16 v2, 0x7a

    aput-object v1, v0, v2

    .line 35
    iget-object v0, p0, Lcom/eltechs/axs/Keyboard;->AKeycodeToXKeycodeMap:[Lcom/eltechs/axs/KeyCodesX;

    sget-object v1, Lcom/eltechs/axs/KeyCodesX;->KEY_END:Lcom/eltechs/axs/KeyCodesX;

    const/16 v2, 0x7b

    aput-object v1, v0, v2

    .line 36
    iget-object v0, p0, Lcom/eltechs/axs/Keyboard;->AKeycodeToXKeycodeMap:[Lcom/eltechs/axs/KeyCodesX;

    sget-object v1, Lcom/eltechs/axs/KeyCodesX;->KEY_PRIOR:Lcom/eltechs/axs/KeyCodesX;

    const/16 v2, 0x5c

    aput-object v1, v0, v2

    .line 37
    iget-object v0, p0, Lcom/eltechs/axs/Keyboard;->AKeycodeToXKeycodeMap:[Lcom/eltechs/axs/KeyCodesX;

    sget-object v1, Lcom/eltechs/axs/KeyCodesX;->KEY_NEXT:Lcom/eltechs/axs/KeyCodesX;

    const/16 v2, 0x5d

    aput-object v1, v0, v2

    .line 38
    iget-object v0, p0, Lcom/eltechs/axs/Keyboard;->AKeycodeToXKeycodeMap:[Lcom/eltechs/axs/KeyCodesX;

    sget-object v1, Lcom/eltechs/axs/KeyCodesX;->KEY_SHIFT_LEFT:Lcom/eltechs/axs/KeyCodesX;

    const/16 v2, 0x3b

    aput-object v1, v0, v2

    .line 39
    iget-object v0, p0, Lcom/eltechs/axs/Keyboard;->AKeycodeToXKeycodeMap:[Lcom/eltechs/axs/KeyCodesX;

    sget-object v1, Lcom/eltechs/axs/KeyCodesX;->KEY_SHIFT_RIGHT:Lcom/eltechs/axs/KeyCodesX;

    const/16 v2, 0x3c

    aput-object v1, v0, v2

    .line 40
    invoke-static {}, Landroid/view/KeyEvent;->getMaxKeyCode()I

    move-result v0

    const/16 v1, 0x72

    if-le v0, v1, :cond_0

    .line 41
    iget-object v0, p0, Lcom/eltechs/axs/Keyboard;->AKeycodeToXKeycodeMap:[Lcom/eltechs/axs/KeyCodesX;

    const/16 v2, 0x71

    sget-object v3, Lcom/eltechs/axs/KeyCodesX;->KEY_CONTROL_LEFT:Lcom/eltechs/axs/KeyCodesX;

    aput-object v3, v0, v2

    .line 42
    iget-object v0, p0, Lcom/eltechs/axs/Keyboard;->AKeycodeToXKeycodeMap:[Lcom/eltechs/axs/KeyCodesX;

    sget-object v2, Lcom/eltechs/axs/KeyCodesX;->KEY_CONTROL_RIGHT:Lcom/eltechs/axs/KeyCodesX;

    aput-object v2, v0, v1

    .line 44
    :cond_0
    iget-object v0, p0, Lcom/eltechs/axs/Keyboard;->AKeycodeToXKeycodeMap:[Lcom/eltechs/axs/KeyCodesX;

    const/16 v1, 0x39

    sget-object v2, Lcom/eltechs/axs/KeyCodesX;->KEY_ALT_LEFT:Lcom/eltechs/axs/KeyCodesX;

    aput-object v2, v0, v1

    .line 45
    iget-object v0, p0, Lcom/eltechs/axs/Keyboard;->AKeycodeToXKeycodeMap:[Lcom/eltechs/axs/KeyCodesX;

    const/16 v1, 0x3a

    sget-object v2, Lcom/eltechs/axs/KeyCodesX;->KEY_ALT_RIGHT:Lcom/eltechs/axs/KeyCodesX;

    aput-object v2, v0, v1

    .line 46
    iget-object v0, p0, Lcom/eltechs/axs/Keyboard;->AKeycodeToXKeycodeMap:[Lcom/eltechs/axs/KeyCodesX;

    const/16 v1, 0x3d

    sget-object v2, Lcom/eltechs/axs/KeyCodesX;->KEY_TAB:Lcom/eltechs/axs/KeyCodesX;

    aput-object v2, v0, v1

    .line 47
    iget-object v0, p0, Lcom/eltechs/axs/Keyboard;->AKeycodeToXKeycodeMap:[Lcom/eltechs/axs/KeyCodesX;

    const/16 v1, 0x3e

    sget-object v2, Lcom/eltechs/axs/KeyCodesX;->KEY_SPACE:Lcom/eltechs/axs/KeyCodesX;

    aput-object v2, v0, v1

    .line 48
    iget-object v0, p0, Lcom/eltechs/axs/Keyboard;->AKeycodeToXKeycodeMap:[Lcom/eltechs/axs/KeyCodesX;

    const/16 v1, 0x1d

    sget-object v2, Lcom/eltechs/axs/KeyCodesX;->KEY_A:Lcom/eltechs/axs/KeyCodesX;

    aput-object v2, v0, v1

    .line 49
    iget-object v0, p0, Lcom/eltechs/axs/Keyboard;->AKeycodeToXKeycodeMap:[Lcom/eltechs/axs/KeyCodesX;

    const/16 v1, 0x1e

    sget-object v2, Lcom/eltechs/axs/KeyCodesX;->KEY_B:Lcom/eltechs/axs/KeyCodesX;

    aput-object v2, v0, v1

    .line 50
    iget-object v0, p0, Lcom/eltechs/axs/Keyboard;->AKeycodeToXKeycodeMap:[Lcom/eltechs/axs/KeyCodesX;

    const/16 v1, 0x1f

    sget-object v2, Lcom/eltechs/axs/KeyCodesX;->KEY_C:Lcom/eltechs/axs/KeyCodesX;

    aput-object v2, v0, v1

    .line 51
    iget-object v0, p0, Lcom/eltechs/axs/Keyboard;->AKeycodeToXKeycodeMap:[Lcom/eltechs/axs/KeyCodesX;

    const/16 v1, 0x20

    sget-object v2, Lcom/eltechs/axs/KeyCodesX;->KEY_D:Lcom/eltechs/axs/KeyCodesX;

    aput-object v2, v0, v1

    .line 52
    iget-object v0, p0, Lcom/eltechs/axs/Keyboard;->AKeycodeToXKeycodeMap:[Lcom/eltechs/axs/KeyCodesX;

    const/16 v1, 0x21

    sget-object v2, Lcom/eltechs/axs/KeyCodesX;->KEY_E:Lcom/eltechs/axs/KeyCodesX;

    aput-object v2, v0, v1

    .line 53
    iget-object v0, p0, Lcom/eltechs/axs/Keyboard;->AKeycodeToXKeycodeMap:[Lcom/eltechs/axs/KeyCodesX;

    const/16 v1, 0x22

    sget-object v2, Lcom/eltechs/axs/KeyCodesX;->KEY_F:Lcom/eltechs/axs/KeyCodesX;

    aput-object v2, v0, v1

    .line 54
    iget-object v0, p0, Lcom/eltechs/axs/Keyboard;->AKeycodeToXKeycodeMap:[Lcom/eltechs/axs/KeyCodesX;

    const/16 v1, 0x23

    sget-object v2, Lcom/eltechs/axs/KeyCodesX;->KEY_G:Lcom/eltechs/axs/KeyCodesX;

    aput-object v2, v0, v1

    .line 55
    iget-object v0, p0, Lcom/eltechs/axs/Keyboard;->AKeycodeToXKeycodeMap:[Lcom/eltechs/axs/KeyCodesX;

    const/16 v1, 0x24

    sget-object v2, Lcom/eltechs/axs/KeyCodesX;->KEY_H:Lcom/eltechs/axs/KeyCodesX;

    aput-object v2, v0, v1

    .line 56
    iget-object v0, p0, Lcom/eltechs/axs/Keyboard;->AKeycodeToXKeycodeMap:[Lcom/eltechs/axs/KeyCodesX;

    const/16 v1, 0x25

    sget-object v2, Lcom/eltechs/axs/KeyCodesX;->KEY_I:Lcom/eltechs/axs/KeyCodesX;

    aput-object v2, v0, v1

    .line 57
    iget-object v0, p0, Lcom/eltechs/axs/Keyboard;->AKeycodeToXKeycodeMap:[Lcom/eltechs/axs/KeyCodesX;

    const/16 v1, 0x26

    sget-object v2, Lcom/eltechs/axs/KeyCodesX;->KEY_J:Lcom/eltechs/axs/KeyCodesX;

    aput-object v2, v0, v1

    .line 58
    iget-object v0, p0, Lcom/eltechs/axs/Keyboard;->AKeycodeToXKeycodeMap:[Lcom/eltechs/axs/KeyCodesX;

    const/16 v1, 0x27

    sget-object v2, Lcom/eltechs/axs/KeyCodesX;->KEY_K:Lcom/eltechs/axs/KeyCodesX;

    aput-object v2, v0, v1

    .line 59
    iget-object v0, p0, Lcom/eltechs/axs/Keyboard;->AKeycodeToXKeycodeMap:[Lcom/eltechs/axs/KeyCodesX;

    const/16 v1, 0x28

    sget-object v2, Lcom/eltechs/axs/KeyCodesX;->KEY_L:Lcom/eltechs/axs/KeyCodesX;

    aput-object v2, v0, v1

    .line 60
    iget-object v0, p0, Lcom/eltechs/axs/Keyboard;->AKeycodeToXKeycodeMap:[Lcom/eltechs/axs/KeyCodesX;

    const/16 v1, 0x29

    sget-object v2, Lcom/eltechs/axs/KeyCodesX;->KEY_M:Lcom/eltechs/axs/KeyCodesX;

    aput-object v2, v0, v1

    .line 61
    iget-object v0, p0, Lcom/eltechs/axs/Keyboard;->AKeycodeToXKeycodeMap:[Lcom/eltechs/axs/KeyCodesX;

    const/16 v1, 0x2a

    sget-object v2, Lcom/eltechs/axs/KeyCodesX;->KEY_N:Lcom/eltechs/axs/KeyCodesX;

    aput-object v2, v0, v1

    .line 62
    iget-object v0, p0, Lcom/eltechs/axs/Keyboard;->AKeycodeToXKeycodeMap:[Lcom/eltechs/axs/KeyCodesX;

    const/16 v1, 0x2b

    sget-object v2, Lcom/eltechs/axs/KeyCodesX;->KEY_O:Lcom/eltechs/axs/KeyCodesX;

    aput-object v2, v0, v1

    .line 63
    iget-object v0, p0, Lcom/eltechs/axs/Keyboard;->AKeycodeToXKeycodeMap:[Lcom/eltechs/axs/KeyCodesX;

    const/16 v1, 0x2c

    sget-object v2, Lcom/eltechs/axs/KeyCodesX;->KEY_P:Lcom/eltechs/axs/KeyCodesX;

    aput-object v2, v0, v1

    .line 64
    iget-object v0, p0, Lcom/eltechs/axs/Keyboard;->AKeycodeToXKeycodeMap:[Lcom/eltechs/axs/KeyCodesX;

    const/16 v1, 0x2d

    sget-object v2, Lcom/eltechs/axs/KeyCodesX;->KEY_Q:Lcom/eltechs/axs/KeyCodesX;

    aput-object v2, v0, v1

    .line 65
    iget-object v0, p0, Lcom/eltechs/axs/Keyboard;->AKeycodeToXKeycodeMap:[Lcom/eltechs/axs/KeyCodesX;

    const/16 v1, 0x2e

    sget-object v2, Lcom/eltechs/axs/KeyCodesX;->KEY_R:Lcom/eltechs/axs/KeyCodesX;

    aput-object v2, v0, v1

    .line 66
    iget-object v0, p0, Lcom/eltechs/axs/Keyboard;->AKeycodeToXKeycodeMap:[Lcom/eltechs/axs/KeyCodesX;

    const/16 v1, 0x2f

    sget-object v2, Lcom/eltechs/axs/KeyCodesX;->KEY_S:Lcom/eltechs/axs/KeyCodesX;

    aput-object v2, v0, v1

    .line 67
    iget-object v0, p0, Lcom/eltechs/axs/Keyboard;->AKeycodeToXKeycodeMap:[Lcom/eltechs/axs/KeyCodesX;

    const/16 v1, 0x30

    sget-object v2, Lcom/eltechs/axs/KeyCodesX;->KEY_T:Lcom/eltechs/axs/KeyCodesX;

    aput-object v2, v0, v1

    .line 68
    iget-object v0, p0, Lcom/eltechs/axs/Keyboard;->AKeycodeToXKeycodeMap:[Lcom/eltechs/axs/KeyCodesX;

    const/16 v1, 0x31

    sget-object v2, Lcom/eltechs/axs/KeyCodesX;->KEY_U:Lcom/eltechs/axs/KeyCodesX;

    aput-object v2, v0, v1

    .line 69
    iget-object v0, p0, Lcom/eltechs/axs/Keyboard;->AKeycodeToXKeycodeMap:[Lcom/eltechs/axs/KeyCodesX;

    const/16 v1, 0x32

    sget-object v2, Lcom/eltechs/axs/KeyCodesX;->KEY_V:Lcom/eltechs/axs/KeyCodesX;

    aput-object v2, v0, v1

    .line 70
    iget-object v0, p0, Lcom/eltechs/axs/Keyboard;->AKeycodeToXKeycodeMap:[Lcom/eltechs/axs/KeyCodesX;

    const/16 v1, 0x33

    sget-object v2, Lcom/eltechs/axs/KeyCodesX;->KEY_W:Lcom/eltechs/axs/KeyCodesX;

    aput-object v2, v0, v1

    .line 71
    iget-object v0, p0, Lcom/eltechs/axs/Keyboard;->AKeycodeToXKeycodeMap:[Lcom/eltechs/axs/KeyCodesX;

    const/16 v1, 0x34

    sget-object v2, Lcom/eltechs/axs/KeyCodesX;->KEY_X:Lcom/eltechs/axs/KeyCodesX;

    aput-object v2, v0, v1

    .line 72
    iget-object v0, p0, Lcom/eltechs/axs/Keyboard;->AKeycodeToXKeycodeMap:[Lcom/eltechs/axs/KeyCodesX;

    const/16 v1, 0x35

    sget-object v2, Lcom/eltechs/axs/KeyCodesX;->KEY_Y:Lcom/eltechs/axs/KeyCodesX;

    aput-object v2, v0, v1

    .line 73
    iget-object v0, p0, Lcom/eltechs/axs/Keyboard;->AKeycodeToXKeycodeMap:[Lcom/eltechs/axs/KeyCodesX;

    const/16 v1, 0x36

    sget-object v2, Lcom/eltechs/axs/KeyCodesX;->KEY_Z:Lcom/eltechs/axs/KeyCodesX;

    aput-object v2, v0, v1

    .line 74
    iget-object v0, p0, Lcom/eltechs/axs/Keyboard;->AKeycodeToXKeycodeMap:[Lcom/eltechs/axs/KeyCodesX;

    const/4 v1, 0x7

    sget-object v2, Lcom/eltechs/axs/KeyCodesX;->KEY_0:Lcom/eltechs/axs/KeyCodesX;

    aput-object v2, v0, v1

    .line 75
    iget-object v0, p0, Lcom/eltechs/axs/Keyboard;->AKeycodeToXKeycodeMap:[Lcom/eltechs/axs/KeyCodesX;

    const/16 v1, 0x8

    sget-object v2, Lcom/eltechs/axs/KeyCodesX;->KEY_1:Lcom/eltechs/axs/KeyCodesX;

    aput-object v2, v0, v1

    .line 76
    iget-object v0, p0, Lcom/eltechs/axs/Keyboard;->AKeycodeToXKeycodeMap:[Lcom/eltechs/axs/KeyCodesX;

    const/16 v1, 0x9

    sget-object v2, Lcom/eltechs/axs/KeyCodesX;->KEY_2:Lcom/eltechs/axs/KeyCodesX;

    aput-object v2, v0, v1

    .line 77
    iget-object v0, p0, Lcom/eltechs/axs/Keyboard;->AKeycodeToXKeycodeMap:[Lcom/eltechs/axs/KeyCodesX;

    const/16 v1, 0xa

    sget-object v2, Lcom/eltechs/axs/KeyCodesX;->KEY_3:Lcom/eltechs/axs/KeyCodesX;

    aput-object v2, v0, v1

    .line 78
    iget-object v0, p0, Lcom/eltechs/axs/Keyboard;->AKeycodeToXKeycodeMap:[Lcom/eltechs/axs/KeyCodesX;

    const/16 v1, 0xb

    sget-object v2, Lcom/eltechs/axs/KeyCodesX;->KEY_4:Lcom/eltechs/axs/KeyCodesX;

    aput-object v2, v0, v1

    .line 79
    iget-object v0, p0, Lcom/eltechs/axs/Keyboard;->AKeycodeToXKeycodeMap:[Lcom/eltechs/axs/KeyCodesX;

    const/16 v1, 0xc

    sget-object v2, Lcom/eltechs/axs/KeyCodesX;->KEY_5:Lcom/eltechs/axs/KeyCodesX;

    aput-object v2, v0, v1

    .line 80
    iget-object v0, p0, Lcom/eltechs/axs/Keyboard;->AKeycodeToXKeycodeMap:[Lcom/eltechs/axs/KeyCodesX;

    const/16 v1, 0xd

    sget-object v2, Lcom/eltechs/axs/KeyCodesX;->KEY_6:Lcom/eltechs/axs/KeyCodesX;

    aput-object v2, v0, v1

    .line 81
    iget-object v0, p0, Lcom/eltechs/axs/Keyboard;->AKeycodeToXKeycodeMap:[Lcom/eltechs/axs/KeyCodesX;

    const/16 v1, 0xe

    sget-object v2, Lcom/eltechs/axs/KeyCodesX;->KEY_7:Lcom/eltechs/axs/KeyCodesX;

    aput-object v2, v0, v1

    .line 82
    iget-object v0, p0, Lcom/eltechs/axs/Keyboard;->AKeycodeToXKeycodeMap:[Lcom/eltechs/axs/KeyCodesX;

    const/16 v1, 0xf

    sget-object v2, Lcom/eltechs/axs/KeyCodesX;->KEY_8:Lcom/eltechs/axs/KeyCodesX;

    aput-object v2, v0, v1

    .line 83
    iget-object v0, p0, Lcom/eltechs/axs/Keyboard;->AKeycodeToXKeycodeMap:[Lcom/eltechs/axs/KeyCodesX;

    const/16 v1, 0x10

    sget-object v2, Lcom/eltechs/axs/KeyCodesX;->KEY_9:Lcom/eltechs/axs/KeyCodesX;

    aput-object v2, v0, v1

    .line 84
    iget-object v0, p0, Lcom/eltechs/axs/Keyboard;->AKeycodeToXKeycodeMap:[Lcom/eltechs/axs/KeyCodesX;

    const/16 v1, 0x37

    sget-object v2, Lcom/eltechs/axs/KeyCodesX;->KEY_COMMA:Lcom/eltechs/axs/KeyCodesX;

    aput-object v2, v0, v1

    .line 85
    iget-object v0, p0, Lcom/eltechs/axs/Keyboard;->AKeycodeToXKeycodeMap:[Lcom/eltechs/axs/KeyCodesX;

    const/16 v1, 0x38

    sget-object v2, Lcom/eltechs/axs/KeyCodesX;->KEY_PERIOD:Lcom/eltechs/axs/KeyCodesX;

    aput-object v2, v0, v1

    .line 86
    iget-object v0, p0, Lcom/eltechs/axs/Keyboard;->AKeycodeToXKeycodeMap:[Lcom/eltechs/axs/KeyCodesX;

    const/16 v1, 0x4a

    sget-object v2, Lcom/eltechs/axs/KeyCodesX;->KEY_SEMICOLON:Lcom/eltechs/axs/KeyCodesX;

    aput-object v2, v0, v1

    .line 87
    iget-object v0, p0, Lcom/eltechs/axs/Keyboard;->AKeycodeToXKeycodeMap:[Lcom/eltechs/axs/KeyCodesX;

    const/16 v1, 0x4b

    sget-object v2, Lcom/eltechs/axs/KeyCodesX;->KEY_APOSTROPHE:Lcom/eltechs/axs/KeyCodesX;

    aput-object v2, v0, v1

    .line 88
    iget-object v0, p0, Lcom/eltechs/axs/Keyboard;->AKeycodeToXKeycodeMap:[Lcom/eltechs/axs/KeyCodesX;

    const/16 v1, 0x47

    sget-object v2, Lcom/eltechs/axs/KeyCodesX;->KEY_BRACKET_LEFT:Lcom/eltechs/axs/KeyCodesX;

    aput-object v2, v0, v1

    .line 89
    iget-object v0, p0, Lcom/eltechs/axs/Keyboard;->AKeycodeToXKeycodeMap:[Lcom/eltechs/axs/KeyCodesX;

    const/16 v1, 0x48

    sget-object v2, Lcom/eltechs/axs/KeyCodesX;->KEY_BRACKET_RIGHT:Lcom/eltechs/axs/KeyCodesX;

    aput-object v2, v0, v1

    .line 90
    iget-object v0, p0, Lcom/eltechs/axs/Keyboard;->AKeycodeToXKeycodeMap:[Lcom/eltechs/axs/KeyCodesX;

    const/16 v1, 0x44

    sget-object v2, Lcom/eltechs/axs/KeyCodesX;->KEY_GRAVE:Lcom/eltechs/axs/KeyCodesX;

    aput-object v2, v0, v1

    .line 91
    iget-object v0, p0, Lcom/eltechs/axs/Keyboard;->AKeycodeToXKeycodeMap:[Lcom/eltechs/axs/KeyCodesX;

    const/16 v1, 0x45

    sget-object v2, Lcom/eltechs/axs/KeyCodesX;->KEY_MINUS:Lcom/eltechs/axs/KeyCodesX;

    aput-object v2, v0, v1

    .line 92
    iget-object v0, p0, Lcom/eltechs/axs/Keyboard;->AKeycodeToXKeycodeMap:[Lcom/eltechs/axs/KeyCodesX;

    const/16 v1, 0x46

    sget-object v2, Lcom/eltechs/axs/KeyCodesX;->KEY_EQUAL:Lcom/eltechs/axs/KeyCodesX;

    aput-object v2, v0, v1

    .line 93
    iget-object v0, p0, Lcom/eltechs/axs/Keyboard;->AKeycodeToXKeycodeMap:[Lcom/eltechs/axs/KeyCodesX;

    const/16 v1, 0x4c

    sget-object v2, Lcom/eltechs/axs/KeyCodesX;->KEY_SLASH:Lcom/eltechs/axs/KeyCodesX;

    aput-object v2, v0, v1

    .line 94
    iget-object v0, p0, Lcom/eltechs/axs/Keyboard;->AKeycodeToXKeycodeMap:[Lcom/eltechs/axs/KeyCodesX;

    const/16 v1, 0x49

    sget-object v2, Lcom/eltechs/axs/KeyCodesX;->KEY_BACKSLASH:Lcom/eltechs/axs/KeyCodesX;

    aput-object v2, v0, v1

    .line 95
    iget-object v0, p0, Lcom/eltechs/axs/Keyboard;->AKeycodeToXKeycodeMap:[Lcom/eltechs/axs/KeyCodesX;

    const/16 v1, 0x9a

    sget-object v2, Lcom/eltechs/axs/KeyCodesX;->KEY_KP_DIV:Lcom/eltechs/axs/KeyCodesX;

    aput-object v2, v0, v1

    .line 96
    iget-object v0, p0, Lcom/eltechs/axs/Keyboard;->AKeycodeToXKeycodeMap:[Lcom/eltechs/axs/KeyCodesX;

    const/16 v1, 0x9b

    sget-object v2, Lcom/eltechs/axs/KeyCodesX;->KEY_KP_MULTIPLY:Lcom/eltechs/axs/KeyCodesX;

    aput-object v2, v0, v1

    .line 97
    iget-object v0, p0, Lcom/eltechs/axs/Keyboard;->AKeycodeToXKeycodeMap:[Lcom/eltechs/axs/KeyCodesX;

    const/16 v1, 0x9c

    sget-object v2, Lcom/eltechs/axs/KeyCodesX;->KEY_KP_SUB:Lcom/eltechs/axs/KeyCodesX;

    aput-object v2, v0, v1

    .line 98
    iget-object v0, p0, Lcom/eltechs/axs/Keyboard;->AKeycodeToXKeycodeMap:[Lcom/eltechs/axs/KeyCodesX;

    const/16 v1, 0x9d

    sget-object v2, Lcom/eltechs/axs/KeyCodesX;->KEY_KP_ADD:Lcom/eltechs/axs/KeyCodesX;

    aput-object v2, v0, v1

    .line 99
    iget-object v0, p0, Lcom/eltechs/axs/Keyboard;->AKeycodeToXKeycodeMap:[Lcom/eltechs/axs/KeyCodesX;

    const/16 v1, 0x9e

    sget-object v2, Lcom/eltechs/axs/KeyCodesX;->KEY_KP_DEL:Lcom/eltechs/axs/KeyCodesX;

    aput-object v2, v0, v1

    .line 100
    iget-object v0, p0, Lcom/eltechs/axs/Keyboard;->AKeycodeToXKeycodeMap:[Lcom/eltechs/axs/KeyCodesX;

    const/16 v1, 0x90

    sget-object v2, Lcom/eltechs/axs/KeyCodesX;->KEY_KP_0:Lcom/eltechs/axs/KeyCodesX;

    aput-object v2, v0, v1

    .line 101
    iget-object v0, p0, Lcom/eltechs/axs/Keyboard;->AKeycodeToXKeycodeMap:[Lcom/eltechs/axs/KeyCodesX;

    const/16 v1, 0x91

    sget-object v2, Lcom/eltechs/axs/KeyCodesX;->KEY_KP_1:Lcom/eltechs/axs/KeyCodesX;

    aput-object v2, v0, v1

    .line 102
    iget-object v0, p0, Lcom/eltechs/axs/Keyboard;->AKeycodeToXKeycodeMap:[Lcom/eltechs/axs/KeyCodesX;

    const/16 v1, 0x92

    sget-object v2, Lcom/eltechs/axs/KeyCodesX;->KEY_KP_2:Lcom/eltechs/axs/KeyCodesX;

    aput-object v2, v0, v1

    .line 103
    iget-object v0, p0, Lcom/eltechs/axs/Keyboard;->AKeycodeToXKeycodeMap:[Lcom/eltechs/axs/KeyCodesX;

    const/16 v1, 0x93

    sget-object v2, Lcom/eltechs/axs/KeyCodesX;->KEY_KP_3:Lcom/eltechs/axs/KeyCodesX;

    aput-object v2, v0, v1

    .line 104
    iget-object v0, p0, Lcom/eltechs/axs/Keyboard;->AKeycodeToXKeycodeMap:[Lcom/eltechs/axs/KeyCodesX;

    const/16 v1, 0x94

    sget-object v2, Lcom/eltechs/axs/KeyCodesX;->KEY_KP_4:Lcom/eltechs/axs/KeyCodesX;

    aput-object v2, v0, v1

    .line 105
    iget-object v0, p0, Lcom/eltechs/axs/Keyboard;->AKeycodeToXKeycodeMap:[Lcom/eltechs/axs/KeyCodesX;

    const/16 v1, 0x95

    sget-object v2, Lcom/eltechs/axs/KeyCodesX;->KEY_KP_5:Lcom/eltechs/axs/KeyCodesX;

    aput-object v2, v0, v1

    .line 106
    iget-object v0, p0, Lcom/eltechs/axs/Keyboard;->AKeycodeToXKeycodeMap:[Lcom/eltechs/axs/KeyCodesX;

    const/16 v1, 0x96

    sget-object v2, Lcom/eltechs/axs/KeyCodesX;->KEY_KP_6:Lcom/eltechs/axs/KeyCodesX;

    aput-object v2, v0, v1

    .line 107
    iget-object v0, p0, Lcom/eltechs/axs/Keyboard;->AKeycodeToXKeycodeMap:[Lcom/eltechs/axs/KeyCodesX;

    const/16 v1, 0x97

    sget-object v2, Lcom/eltechs/axs/KeyCodesX;->KEY_KP_7:Lcom/eltechs/axs/KeyCodesX;

    aput-object v2, v0, v1

    .line 108
    iget-object v0, p0, Lcom/eltechs/axs/Keyboard;->AKeycodeToXKeycodeMap:[Lcom/eltechs/axs/KeyCodesX;

    const/16 v1, 0x98

    sget-object v2, Lcom/eltechs/axs/KeyCodesX;->KEY_KP_8:Lcom/eltechs/axs/KeyCodesX;

    aput-object v2, v0, v1

    .line 109
    iget-object v0, p0, Lcom/eltechs/axs/Keyboard;->AKeycodeToXKeycodeMap:[Lcom/eltechs/axs/KeyCodesX;

    const/16 v1, 0x99

    sget-object v2, Lcom/eltechs/axs/KeyCodesX;->KEY_KP_9:Lcom/eltechs/axs/KeyCodesX;

    aput-object v2, v0, v1

    .line 110
    iget-object v0, p0, Lcom/eltechs/axs/Keyboard;->AKeycodeToXKeycodeMap:[Lcom/eltechs/axs/KeyCodesX;

    const/16 v1, 0x83

    sget-object v2, Lcom/eltechs/axs/KeyCodesX;->KEY_F1:Lcom/eltechs/axs/KeyCodesX;

    aput-object v2, v0, v1

    .line 111
    iget-object v0, p0, Lcom/eltechs/axs/Keyboard;->AKeycodeToXKeycodeMap:[Lcom/eltechs/axs/KeyCodesX;

    const/16 v1, 0x84

    sget-object v2, Lcom/eltechs/axs/KeyCodesX;->KEY_F2:Lcom/eltechs/axs/KeyCodesX;

    aput-object v2, v0, v1

    .line 112
    iget-object v0, p0, Lcom/eltechs/axs/Keyboard;->AKeycodeToXKeycodeMap:[Lcom/eltechs/axs/KeyCodesX;

    const/16 v1, 0x85

    sget-object v2, Lcom/eltechs/axs/KeyCodesX;->KEY_F3:Lcom/eltechs/axs/KeyCodesX;

    aput-object v2, v0, v1

    .line 113
    iget-object v0, p0, Lcom/eltechs/axs/Keyboard;->AKeycodeToXKeycodeMap:[Lcom/eltechs/axs/KeyCodesX;

    const/16 v1, 0x86

    sget-object v2, Lcom/eltechs/axs/KeyCodesX;->KEY_F4:Lcom/eltechs/axs/KeyCodesX;

    aput-object v2, v0, v1

    .line 114
    iget-object v0, p0, Lcom/eltechs/axs/Keyboard;->AKeycodeToXKeycodeMap:[Lcom/eltechs/axs/KeyCodesX;

    const/16 v1, 0x87

    sget-object v2, Lcom/eltechs/axs/KeyCodesX;->KEY_F5:Lcom/eltechs/axs/KeyCodesX;

    aput-object v2, v0, v1

    .line 115
    iget-object v0, p0, Lcom/eltechs/axs/Keyboard;->AKeycodeToXKeycodeMap:[Lcom/eltechs/axs/KeyCodesX;

    const/16 v1, 0x88

    sget-object v2, Lcom/eltechs/axs/KeyCodesX;->KEY_F6:Lcom/eltechs/axs/KeyCodesX;

    aput-object v2, v0, v1

    .line 116
    iget-object v0, p0, Lcom/eltechs/axs/Keyboard;->AKeycodeToXKeycodeMap:[Lcom/eltechs/axs/KeyCodesX;

    const/16 v1, 0x89

    sget-object v2, Lcom/eltechs/axs/KeyCodesX;->KEY_F7:Lcom/eltechs/axs/KeyCodesX;

    aput-object v2, v0, v1

    .line 117
    iget-object v0, p0, Lcom/eltechs/axs/Keyboard;->AKeycodeToXKeycodeMap:[Lcom/eltechs/axs/KeyCodesX;

    const/16 v1, 0x8a

    sget-object v2, Lcom/eltechs/axs/KeyCodesX;->KEY_F8:Lcom/eltechs/axs/KeyCodesX;

    aput-object v2, v0, v1

    .line 118
    iget-object v0, p0, Lcom/eltechs/axs/Keyboard;->AKeycodeToXKeycodeMap:[Lcom/eltechs/axs/KeyCodesX;

    const/16 v1, 0x8b

    sget-object v2, Lcom/eltechs/axs/KeyCodesX;->KEY_F9:Lcom/eltechs/axs/KeyCodesX;

    aput-object v2, v0, v1

    .line 119
    iget-object v0, p0, Lcom/eltechs/axs/Keyboard;->AKeycodeToXKeycodeMap:[Lcom/eltechs/axs/KeyCodesX;

    const/16 v1, 0x8c

    sget-object v2, Lcom/eltechs/axs/KeyCodesX;->KEY_F10:Lcom/eltechs/axs/KeyCodesX;

    aput-object v2, v0, v1

    .line 120
    iget-object v0, p0, Lcom/eltechs/axs/Keyboard;->AKeycodeToXKeycodeMap:[Lcom/eltechs/axs/KeyCodesX;

    const/16 v1, 0x8d

    sget-object v2, Lcom/eltechs/axs/KeyCodesX;->KEY_F11:Lcom/eltechs/axs/KeyCodesX;

    aput-object v2, v0, v1

    .line 121
    iget-object v0, p0, Lcom/eltechs/axs/Keyboard;->AKeycodeToXKeycodeMap:[Lcom/eltechs/axs/KeyCodesX;

    const/16 v1, 0x8e

    sget-object v2, Lcom/eltechs/axs/KeyCodesX;->KEY_F12:Lcom/eltechs/axs/KeyCodesX;

    aput-object v2, v0, v1

    .line 122
    iget-object v0, p0, Lcom/eltechs/axs/Keyboard;->AKeycodeToXKeycodeMap:[Lcom/eltechs/axs/KeyCodesX;

    const/16 v1, 0x8f

    sget-object v2, Lcom/eltechs/axs/KeyCodesX;->KEY_NUM_LOCK:Lcom/eltechs/axs/KeyCodesX;

    aput-object v2, v0, v1

    .line 123
    iget-object v0, p0, Lcom/eltechs/axs/Keyboard;->AKeycodeToXKeycodeMap:[Lcom/eltechs/axs/KeyCodesX;

    const/16 v1, 0x73

    sget-object v2, Lcom/eltechs/axs/KeyCodesX;->KEY_CAPS_LOCK:Lcom/eltechs/axs/KeyCodesX;

    aput-object v2, v0, v1

    .line 124
    iget-object v0, p0, Lcom/eltechs/axs/Keyboard;->AKeycodeToXKeycodeMap:[Lcom/eltechs/axs/KeyCodesX;

    const/16 v1, 0x4d

    sget-object v2, Lcom/eltechs/axs/KeyCodesX;->KEY_2:Lcom/eltechs/axs/KeyCodesX;

    aput-object v2, v0, v1

    .line 125
    iget-object v0, p0, Lcom/eltechs/axs/Keyboard;->AKeycodeToXKeycodeMap:[Lcom/eltechs/axs/KeyCodesX;

    const/16 v1, 0x12

    sget-object v2, Lcom/eltechs/axs/KeyCodesX;->KEY_3:Lcom/eltechs/axs/KeyCodesX;

    aput-object v2, v0, v1

    .line 126
    iget-object v0, p0, Lcom/eltechs/axs/Keyboard;->AKeycodeToXKeycodeMap:[Lcom/eltechs/axs/KeyCodesX;

    const/16 v1, 0x11

    sget-object v2, Lcom/eltechs/axs/KeyCodesX;->KEY_8:Lcom/eltechs/axs/KeyCodesX;

    aput-object v2, v0, v1

    .line 127
    iget-object v0, p0, Lcom/eltechs/axs/Keyboard;->AKeycodeToXKeycodeMap:[Lcom/eltechs/axs/KeyCodesX;

    const/16 v1, 0x51

    sget-object v2, Lcom/eltechs/axs/KeyCodesX;->KEY_EQUAL:Lcom/eltechs/axs/KeyCodesX;

    aput-object v2, v0, v1

    return-void
.end method

.method private constructUnicodeToXKeyMap()V
    .locals 4

    .line 278
    iget-object v0, p0, Lcom/eltechs/axs/Keyboard;->UnicodeToXKeyMap:[Lcom/eltechs/axs/Keyboard$XKey;

    new-instance v1, Lcom/eltechs/axs/Keyboard$XKey;

    sget-object v2, Lcom/eltechs/axs/KeyCodesX;->KEY_A:Lcom/eltechs/axs/KeyCodesX;

    const/16 v3, 0x20

    invoke-direct {v1, p0, v2, v3}, Lcom/eltechs/axs/Keyboard$XKey;-><init>(Lcom/eltechs/axs/Keyboard;Lcom/eltechs/axs/KeyCodesX;I)V

    aput-object v1, v0, v3

    .line 279
    iget-object v0, p0, Lcom/eltechs/axs/Keyboard;->UnicodeToXKeyMap:[Lcom/eltechs/axs/Keyboard$XKey;

    new-instance v1, Lcom/eltechs/axs/Keyboard$XKey;

    sget-object v2, Lcom/eltechs/axs/KeyCodesX;->KEY_B:Lcom/eltechs/axs/KeyCodesX;

    const/16 v3, 0x21

    invoke-direct {v1, p0, v2, v3}, Lcom/eltechs/axs/Keyboard$XKey;-><init>(Lcom/eltechs/axs/Keyboard;Lcom/eltechs/axs/KeyCodesX;I)V

    aput-object v1, v0, v3

    .line 280
    iget-object v0, p0, Lcom/eltechs/axs/Keyboard;->UnicodeToXKeyMap:[Lcom/eltechs/axs/Keyboard$XKey;

    new-instance v1, Lcom/eltechs/axs/Keyboard$XKey;

    sget-object v2, Lcom/eltechs/axs/KeyCodesX;->KEY_C:Lcom/eltechs/axs/KeyCodesX;

    const/16 v3, 0x22

    invoke-direct {v1, p0, v2, v3}, Lcom/eltechs/axs/Keyboard$XKey;-><init>(Lcom/eltechs/axs/Keyboard;Lcom/eltechs/axs/KeyCodesX;I)V

    aput-object v1, v0, v3

    .line 281
    iget-object v0, p0, Lcom/eltechs/axs/Keyboard;->UnicodeToXKeyMap:[Lcom/eltechs/axs/Keyboard$XKey;

    new-instance v1, Lcom/eltechs/axs/Keyboard$XKey;

    sget-object v2, Lcom/eltechs/axs/KeyCodesX;->KEY_D:Lcom/eltechs/axs/KeyCodesX;

    const/16 v3, 0x23

    invoke-direct {v1, p0, v2, v3}, Lcom/eltechs/axs/Keyboard$XKey;-><init>(Lcom/eltechs/axs/Keyboard;Lcom/eltechs/axs/KeyCodesX;I)V

    aput-object v1, v0, v3

    .line 282
    iget-object v0, p0, Lcom/eltechs/axs/Keyboard;->UnicodeToXKeyMap:[Lcom/eltechs/axs/Keyboard$XKey;

    new-instance v1, Lcom/eltechs/axs/Keyboard$XKey;

    sget-object v2, Lcom/eltechs/axs/KeyCodesX;->KEY_E:Lcom/eltechs/axs/KeyCodesX;

    const/16 v3, 0x24

    invoke-direct {v1, p0, v2, v3}, Lcom/eltechs/axs/Keyboard$XKey;-><init>(Lcom/eltechs/axs/Keyboard;Lcom/eltechs/axs/KeyCodesX;I)V

    aput-object v1, v0, v3

    .line 283
    iget-object v0, p0, Lcom/eltechs/axs/Keyboard;->UnicodeToXKeyMap:[Lcom/eltechs/axs/Keyboard$XKey;

    new-instance v1, Lcom/eltechs/axs/Keyboard$XKey;

    sget-object v2, Lcom/eltechs/axs/KeyCodesX;->KEY_F:Lcom/eltechs/axs/KeyCodesX;

    const/16 v3, 0x25

    invoke-direct {v1, p0, v2, v3}, Lcom/eltechs/axs/Keyboard$XKey;-><init>(Lcom/eltechs/axs/Keyboard;Lcom/eltechs/axs/KeyCodesX;I)V

    aput-object v1, v0, v3

    .line 284
    iget-object v0, p0, Lcom/eltechs/axs/Keyboard;->UnicodeToXKeyMap:[Lcom/eltechs/axs/Keyboard$XKey;

    new-instance v1, Lcom/eltechs/axs/Keyboard$XKey;

    sget-object v2, Lcom/eltechs/axs/KeyCodesX;->KEY_G:Lcom/eltechs/axs/KeyCodesX;

    const/16 v3, 0x26

    invoke-direct {v1, p0, v2, v3}, Lcom/eltechs/axs/Keyboard$XKey;-><init>(Lcom/eltechs/axs/Keyboard;Lcom/eltechs/axs/KeyCodesX;I)V

    aput-object v1, v0, v3

    .line 285
    iget-object v0, p0, Lcom/eltechs/axs/Keyboard;->UnicodeToXKeyMap:[Lcom/eltechs/axs/Keyboard$XKey;

    new-instance v1, Lcom/eltechs/axs/Keyboard$XKey;

    sget-object v2, Lcom/eltechs/axs/KeyCodesX;->KEY_H:Lcom/eltechs/axs/KeyCodesX;

    const/16 v3, 0x27

    invoke-direct {v1, p0, v2, v3}, Lcom/eltechs/axs/Keyboard$XKey;-><init>(Lcom/eltechs/axs/Keyboard;Lcom/eltechs/axs/KeyCodesX;I)V

    aput-object v1, v0, v3

    .line 286
    iget-object v0, p0, Lcom/eltechs/axs/Keyboard;->UnicodeToXKeyMap:[Lcom/eltechs/axs/Keyboard$XKey;

    new-instance v1, Lcom/eltechs/axs/Keyboard$XKey;

    sget-object v2, Lcom/eltechs/axs/KeyCodesX;->KEY_I:Lcom/eltechs/axs/KeyCodesX;

    const/16 v3, 0x28

    invoke-direct {v1, p0, v2, v3}, Lcom/eltechs/axs/Keyboard$XKey;-><init>(Lcom/eltechs/axs/Keyboard;Lcom/eltechs/axs/KeyCodesX;I)V

    aput-object v1, v0, v3

    .line 287
    iget-object v0, p0, Lcom/eltechs/axs/Keyboard;->UnicodeToXKeyMap:[Lcom/eltechs/axs/Keyboard$XKey;

    new-instance v1, Lcom/eltechs/axs/Keyboard$XKey;

    sget-object v2, Lcom/eltechs/axs/KeyCodesX;->KEY_J:Lcom/eltechs/axs/KeyCodesX;

    const/16 v3, 0x29

    invoke-direct {v1, p0, v2, v3}, Lcom/eltechs/axs/Keyboard$XKey;-><init>(Lcom/eltechs/axs/Keyboard;Lcom/eltechs/axs/KeyCodesX;I)V

    aput-object v1, v0, v3

    .line 288
    iget-object v0, p0, Lcom/eltechs/axs/Keyboard;->UnicodeToXKeyMap:[Lcom/eltechs/axs/Keyboard$XKey;

    new-instance v1, Lcom/eltechs/axs/Keyboard$XKey;

    sget-object v2, Lcom/eltechs/axs/KeyCodesX;->KEY_K:Lcom/eltechs/axs/KeyCodesX;

    const/16 v3, 0x2a

    invoke-direct {v1, p0, v2, v3}, Lcom/eltechs/axs/Keyboard$XKey;-><init>(Lcom/eltechs/axs/Keyboard;Lcom/eltechs/axs/KeyCodesX;I)V

    aput-object v1, v0, v3

    .line 289
    iget-object v0, p0, Lcom/eltechs/axs/Keyboard;->UnicodeToXKeyMap:[Lcom/eltechs/axs/Keyboard$XKey;

    new-instance v1, Lcom/eltechs/axs/Keyboard$XKey;

    sget-object v2, Lcom/eltechs/axs/KeyCodesX;->KEY_L:Lcom/eltechs/axs/KeyCodesX;

    const/16 v3, 0x2b

    invoke-direct {v1, p0, v2, v3}, Lcom/eltechs/axs/Keyboard$XKey;-><init>(Lcom/eltechs/axs/Keyboard;Lcom/eltechs/axs/KeyCodesX;I)V

    aput-object v1, v0, v3

    .line 290
    iget-object v0, p0, Lcom/eltechs/axs/Keyboard;->UnicodeToXKeyMap:[Lcom/eltechs/axs/Keyboard$XKey;

    new-instance v1, Lcom/eltechs/axs/Keyboard$XKey;

    sget-object v2, Lcom/eltechs/axs/KeyCodesX;->KEY_M:Lcom/eltechs/axs/KeyCodesX;

    const/16 v3, 0x2c

    invoke-direct {v1, p0, v2, v3}, Lcom/eltechs/axs/Keyboard$XKey;-><init>(Lcom/eltechs/axs/Keyboard;Lcom/eltechs/axs/KeyCodesX;I)V

    aput-object v1, v0, v3

    .line 291
    iget-object v0, p0, Lcom/eltechs/axs/Keyboard;->UnicodeToXKeyMap:[Lcom/eltechs/axs/Keyboard$XKey;

    new-instance v1, Lcom/eltechs/axs/Keyboard$XKey;

    sget-object v2, Lcom/eltechs/axs/KeyCodesX;->KEY_N:Lcom/eltechs/axs/KeyCodesX;

    const/16 v3, 0x2d

    invoke-direct {v1, p0, v2, v3}, Lcom/eltechs/axs/Keyboard$XKey;-><init>(Lcom/eltechs/axs/Keyboard;Lcom/eltechs/axs/KeyCodesX;I)V

    aput-object v1, v0, v3

    .line 292
    iget-object v0, p0, Lcom/eltechs/axs/Keyboard;->UnicodeToXKeyMap:[Lcom/eltechs/axs/Keyboard$XKey;

    new-instance v1, Lcom/eltechs/axs/Keyboard$XKey;

    sget-object v2, Lcom/eltechs/axs/KeyCodesX;->KEY_O:Lcom/eltechs/axs/KeyCodesX;

    const/16 v3, 0x2e

    invoke-direct {v1, p0, v2, v3}, Lcom/eltechs/axs/Keyboard$XKey;-><init>(Lcom/eltechs/axs/Keyboard;Lcom/eltechs/axs/KeyCodesX;I)V

    aput-object v1, v0, v3

    .line 293
    iget-object v0, p0, Lcom/eltechs/axs/Keyboard;->UnicodeToXKeyMap:[Lcom/eltechs/axs/Keyboard$XKey;

    new-instance v1, Lcom/eltechs/axs/Keyboard$XKey;

    sget-object v2, Lcom/eltechs/axs/KeyCodesX;->KEY_P:Lcom/eltechs/axs/KeyCodesX;

    const/16 v3, 0x2f

    invoke-direct {v1, p0, v2, v3}, Lcom/eltechs/axs/Keyboard$XKey;-><init>(Lcom/eltechs/axs/Keyboard;Lcom/eltechs/axs/KeyCodesX;I)V

    const/16 v2, 0x2f

    aput-object v1, v0, v2

    .line 294
    iget-object v0, p0, Lcom/eltechs/axs/Keyboard;->UnicodeToXKeyMap:[Lcom/eltechs/axs/Keyboard$XKey;

    new-instance v1, Lcom/eltechs/axs/Keyboard$XKey;

    sget-object v2, Lcom/eltechs/axs/KeyCodesX;->KEY_Q:Lcom/eltechs/axs/KeyCodesX;

    const/16 v3, 0x30

    invoke-direct {v1, p0, v2, v3}, Lcom/eltechs/axs/Keyboard$XKey;-><init>(Lcom/eltechs/axs/Keyboard;Lcom/eltechs/axs/KeyCodesX;I)V

    const/16 v2, 0x30

    aput-object v1, v0, v2

    .line 295
    iget-object v0, p0, Lcom/eltechs/axs/Keyboard;->UnicodeToXKeyMap:[Lcom/eltechs/axs/Keyboard$XKey;

    new-instance v1, Lcom/eltechs/axs/Keyboard$XKey;

    sget-object v2, Lcom/eltechs/axs/KeyCodesX;->KEY_R:Lcom/eltechs/axs/KeyCodesX;

    const/16 v3, 0x31

    invoke-direct {v1, p0, v2, v3}, Lcom/eltechs/axs/Keyboard$XKey;-><init>(Lcom/eltechs/axs/Keyboard;Lcom/eltechs/axs/KeyCodesX;I)V

    const/16 v2, 0x31

    aput-object v1, v0, v2

    .line 296
    iget-object v0, p0, Lcom/eltechs/axs/Keyboard;->UnicodeToXKeyMap:[Lcom/eltechs/axs/Keyboard$XKey;

    new-instance v1, Lcom/eltechs/axs/Keyboard$XKey;

    sget-object v2, Lcom/eltechs/axs/KeyCodesX;->KEY_S:Lcom/eltechs/axs/KeyCodesX;

    const/16 v3, 0x32

    invoke-direct {v1, p0, v2, v3}, Lcom/eltechs/axs/Keyboard$XKey;-><init>(Lcom/eltechs/axs/Keyboard;Lcom/eltechs/axs/KeyCodesX;I)V

    const/16 v2, 0x32

    aput-object v1, v0, v2

    .line 297
    iget-object v0, p0, Lcom/eltechs/axs/Keyboard;->UnicodeToXKeyMap:[Lcom/eltechs/axs/Keyboard$XKey;

    new-instance v1, Lcom/eltechs/axs/Keyboard$XKey;

    sget-object v2, Lcom/eltechs/axs/KeyCodesX;->KEY_T:Lcom/eltechs/axs/KeyCodesX;

    const/16 v3, 0x33

    invoke-direct {v1, p0, v2, v3}, Lcom/eltechs/axs/Keyboard$XKey;-><init>(Lcom/eltechs/axs/Keyboard;Lcom/eltechs/axs/KeyCodesX;I)V

    const/16 v2, 0x33

    aput-object v1, v0, v2

    .line 298
    iget-object v0, p0, Lcom/eltechs/axs/Keyboard;->UnicodeToXKeyMap:[Lcom/eltechs/axs/Keyboard$XKey;

    new-instance v1, Lcom/eltechs/axs/Keyboard$XKey;

    sget-object v2, Lcom/eltechs/axs/KeyCodesX;->KEY_U:Lcom/eltechs/axs/KeyCodesX;

    const/16 v3, 0x34

    invoke-direct {v1, p0, v2, v3}, Lcom/eltechs/axs/Keyboard$XKey;-><init>(Lcom/eltechs/axs/Keyboard;Lcom/eltechs/axs/KeyCodesX;I)V

    const/16 v2, 0x34

    aput-object v1, v0, v2

    .line 299
    iget-object v0, p0, Lcom/eltechs/axs/Keyboard;->UnicodeToXKeyMap:[Lcom/eltechs/axs/Keyboard$XKey;

    new-instance v1, Lcom/eltechs/axs/Keyboard$XKey;

    sget-object v2, Lcom/eltechs/axs/KeyCodesX;->KEY_V:Lcom/eltechs/axs/KeyCodesX;

    const/16 v3, 0x35

    invoke-direct {v1, p0, v2, v3}, Lcom/eltechs/axs/Keyboard$XKey;-><init>(Lcom/eltechs/axs/Keyboard;Lcom/eltechs/axs/KeyCodesX;I)V

    const/16 v2, 0x35

    aput-object v1, v0, v2

    .line 300
    iget-object v0, p0, Lcom/eltechs/axs/Keyboard;->UnicodeToXKeyMap:[Lcom/eltechs/axs/Keyboard$XKey;

    new-instance v1, Lcom/eltechs/axs/Keyboard$XKey;

    sget-object v2, Lcom/eltechs/axs/KeyCodesX;->KEY_W:Lcom/eltechs/axs/KeyCodesX;

    const/16 v3, 0x36

    invoke-direct {v1, p0, v2, v3}, Lcom/eltechs/axs/Keyboard$XKey;-><init>(Lcom/eltechs/axs/Keyboard;Lcom/eltechs/axs/KeyCodesX;I)V

    const/16 v2, 0x36

    aput-object v1, v0, v2

    .line 301
    iget-object v0, p0, Lcom/eltechs/axs/Keyboard;->UnicodeToXKeyMap:[Lcom/eltechs/axs/Keyboard$XKey;

    new-instance v1, Lcom/eltechs/axs/Keyboard$XKey;

    sget-object v2, Lcom/eltechs/axs/KeyCodesX;->KEY_X:Lcom/eltechs/axs/KeyCodesX;

    const/16 v3, 0x37

    invoke-direct {v1, p0, v2, v3}, Lcom/eltechs/axs/Keyboard$XKey;-><init>(Lcom/eltechs/axs/Keyboard;Lcom/eltechs/axs/KeyCodesX;I)V

    const/16 v2, 0x37

    aput-object v1, v0, v2

    .line 302
    iget-object v0, p0, Lcom/eltechs/axs/Keyboard;->UnicodeToXKeyMap:[Lcom/eltechs/axs/Keyboard$XKey;

    new-instance v1, Lcom/eltechs/axs/Keyboard$XKey;

    sget-object v2, Lcom/eltechs/axs/KeyCodesX;->KEY_Y:Lcom/eltechs/axs/KeyCodesX;

    const/16 v3, 0x38

    invoke-direct {v1, p0, v2, v3}, Lcom/eltechs/axs/Keyboard$XKey;-><init>(Lcom/eltechs/axs/Keyboard;Lcom/eltechs/axs/KeyCodesX;I)V

    const/16 v2, 0x38

    aput-object v1, v0, v2

    .line 303
    iget-object v0, p0, Lcom/eltechs/axs/Keyboard;->UnicodeToXKeyMap:[Lcom/eltechs/axs/Keyboard$XKey;

    new-instance v1, Lcom/eltechs/axs/Keyboard$XKey;

    sget-object v2, Lcom/eltechs/axs/KeyCodesX;->KEY_Z:Lcom/eltechs/axs/KeyCodesX;

    const/16 v3, 0x39

    invoke-direct {v1, p0, v2, v3}, Lcom/eltechs/axs/Keyboard$XKey;-><init>(Lcom/eltechs/axs/Keyboard;Lcom/eltechs/axs/KeyCodesX;I)V

    const/16 v2, 0x39

    aput-object v1, v0, v2

    .line 304
    iget-object v0, p0, Lcom/eltechs/axs/Keyboard;->UnicodeToXKeyMap:[Lcom/eltechs/axs/Keyboard$XKey;

    new-instance v1, Lcom/eltechs/axs/Keyboard$XKey;

    sget-object v2, Lcom/eltechs/axs/KeyCodesX;->KEY_A:Lcom/eltechs/axs/KeyCodesX;

    const/16 v3, 0x3a

    invoke-direct {v1, p0, v2, v3}, Lcom/eltechs/axs/Keyboard$XKey;-><init>(Lcom/eltechs/axs/Keyboard;Lcom/eltechs/axs/KeyCodesX;I)V

    const/16 v2, 0x3a

    aput-object v1, v0, v2

    .line 305
    iget-object v0, p0, Lcom/eltechs/axs/Keyboard;->UnicodeToXKeyMap:[Lcom/eltechs/axs/Keyboard$XKey;

    new-instance v1, Lcom/eltechs/axs/Keyboard$XKey;

    sget-object v2, Lcom/eltechs/axs/KeyCodesX;->KEY_B:Lcom/eltechs/axs/KeyCodesX;

    const/16 v3, 0x3b

    invoke-direct {v1, p0, v2, v3}, Lcom/eltechs/axs/Keyboard$XKey;-><init>(Lcom/eltechs/axs/Keyboard;Lcom/eltechs/axs/KeyCodesX;I)V

    const/16 v2, 0x3b

    aput-object v1, v0, v2

    .line 306
    iget-object v0, p0, Lcom/eltechs/axs/Keyboard;->UnicodeToXKeyMap:[Lcom/eltechs/axs/Keyboard$XKey;

    new-instance v1, Lcom/eltechs/axs/Keyboard$XKey;

    sget-object v2, Lcom/eltechs/axs/KeyCodesX;->KEY_C:Lcom/eltechs/axs/KeyCodesX;

    const/16 v3, 0x3c

    invoke-direct {v1, p0, v2, v3}, Lcom/eltechs/axs/Keyboard$XKey;-><init>(Lcom/eltechs/axs/Keyboard;Lcom/eltechs/axs/KeyCodesX;I)V

    const/16 v2, 0x3c

    aput-object v1, v0, v2

    .line 307
    iget-object v0, p0, Lcom/eltechs/axs/Keyboard;->UnicodeToXKeyMap:[Lcom/eltechs/axs/Keyboard$XKey;

    new-instance v1, Lcom/eltechs/axs/Keyboard$XKey;

    sget-object v2, Lcom/eltechs/axs/KeyCodesX;->KEY_D:Lcom/eltechs/axs/KeyCodesX;

    const/16 v3, 0x3d

    invoke-direct {v1, p0, v2, v3}, Lcom/eltechs/axs/Keyboard$XKey;-><init>(Lcom/eltechs/axs/Keyboard;Lcom/eltechs/axs/KeyCodesX;I)V

    const/16 v2, 0x3d

    aput-object v1, v0, v2

    .line 308
    iget-object v0, p0, Lcom/eltechs/axs/Keyboard;->UnicodeToXKeyMap:[Lcom/eltechs/axs/Keyboard$XKey;

    new-instance v1, Lcom/eltechs/axs/Keyboard$XKey;

    sget-object v2, Lcom/eltechs/axs/KeyCodesX;->KEY_E:Lcom/eltechs/axs/KeyCodesX;

    const/16 v3, 0x3e

    invoke-direct {v1, p0, v2, v3}, Lcom/eltechs/axs/Keyboard$XKey;-><init>(Lcom/eltechs/axs/Keyboard;Lcom/eltechs/axs/KeyCodesX;I)V

    const/16 v2, 0x3e

    aput-object v1, v0, v2

    .line 309
    iget-object v0, p0, Lcom/eltechs/axs/Keyboard;->UnicodeToXKeyMap:[Lcom/eltechs/axs/Keyboard$XKey;

    new-instance v1, Lcom/eltechs/axs/Keyboard$XKey;

    sget-object v2, Lcom/eltechs/axs/KeyCodesX;->KEY_F:Lcom/eltechs/axs/KeyCodesX;

    const/16 v3, 0x3f

    invoke-direct {v1, p0, v2, v3}, Lcom/eltechs/axs/Keyboard$XKey;-><init>(Lcom/eltechs/axs/Keyboard;Lcom/eltechs/axs/KeyCodesX;I)V

    const/16 v2, 0x3f

    aput-object v1, v0, v2

    .line 310
    iget-object v0, p0, Lcom/eltechs/axs/Keyboard;->UnicodeToXKeyMap:[Lcom/eltechs/axs/Keyboard$XKey;

    new-instance v1, Lcom/eltechs/axs/Keyboard$XKey;

    sget-object v2, Lcom/eltechs/axs/KeyCodesX;->KEY_G:Lcom/eltechs/axs/KeyCodesX;

    const/16 v3, 0x40

    invoke-direct {v1, p0, v2, v3}, Lcom/eltechs/axs/Keyboard$XKey;-><init>(Lcom/eltechs/axs/Keyboard;Lcom/eltechs/axs/KeyCodesX;I)V

    const/16 v2, 0x40

    aput-object v1, v0, v2

    .line 311
    iget-object v0, p0, Lcom/eltechs/axs/Keyboard;->UnicodeToXKeyMap:[Lcom/eltechs/axs/Keyboard$XKey;

    new-instance v1, Lcom/eltechs/axs/Keyboard$XKey;

    sget-object v2, Lcom/eltechs/axs/KeyCodesX;->KEY_H:Lcom/eltechs/axs/KeyCodesX;

    const/16 v3, 0x41

    invoke-direct {v1, p0, v2, v3}, Lcom/eltechs/axs/Keyboard$XKey;-><init>(Lcom/eltechs/axs/Keyboard;Lcom/eltechs/axs/KeyCodesX;I)V

    const/16 v2, 0x41

    aput-object v1, v0, v2

    .line 312
    iget-object v0, p0, Lcom/eltechs/axs/Keyboard;->UnicodeToXKeyMap:[Lcom/eltechs/axs/Keyboard$XKey;

    new-instance v1, Lcom/eltechs/axs/Keyboard$XKey;

    sget-object v2, Lcom/eltechs/axs/KeyCodesX;->KEY_I:Lcom/eltechs/axs/KeyCodesX;

    const/16 v3, 0x42

    invoke-direct {v1, p0, v2, v3}, Lcom/eltechs/axs/Keyboard$XKey;-><init>(Lcom/eltechs/axs/Keyboard;Lcom/eltechs/axs/KeyCodesX;I)V

    const/16 v2, 0x42

    aput-object v1, v0, v2

    .line 313
    iget-object v0, p0, Lcom/eltechs/axs/Keyboard;->UnicodeToXKeyMap:[Lcom/eltechs/axs/Keyboard$XKey;

    new-instance v1, Lcom/eltechs/axs/Keyboard$XKey;

    sget-object v2, Lcom/eltechs/axs/KeyCodesX;->KEY_J:Lcom/eltechs/axs/KeyCodesX;

    const/16 v3, 0x43

    invoke-direct {v1, p0, v2, v3}, Lcom/eltechs/axs/Keyboard$XKey;-><init>(Lcom/eltechs/axs/Keyboard;Lcom/eltechs/axs/KeyCodesX;I)V

    const/16 v2, 0x43

    aput-object v1, v0, v2

    .line 314
    iget-object v0, p0, Lcom/eltechs/axs/Keyboard;->UnicodeToXKeyMap:[Lcom/eltechs/axs/Keyboard$XKey;

    new-instance v1, Lcom/eltechs/axs/Keyboard$XKey;

    sget-object v2, Lcom/eltechs/axs/KeyCodesX;->KEY_K:Lcom/eltechs/axs/KeyCodesX;

    const/16 v3, 0x44

    invoke-direct {v1, p0, v2, v3}, Lcom/eltechs/axs/Keyboard$XKey;-><init>(Lcom/eltechs/axs/Keyboard;Lcom/eltechs/axs/KeyCodesX;I)V

    const/16 v2, 0x44

    aput-object v1, v0, v2

    .line 315
    iget-object v0, p0, Lcom/eltechs/axs/Keyboard;->UnicodeToXKeyMap:[Lcom/eltechs/axs/Keyboard$XKey;

    new-instance v1, Lcom/eltechs/axs/Keyboard$XKey;

    sget-object v2, Lcom/eltechs/axs/KeyCodesX;->KEY_L:Lcom/eltechs/axs/KeyCodesX;

    const/16 v3, 0x45

    invoke-direct {v1, p0, v2, v3}, Lcom/eltechs/axs/Keyboard$XKey;-><init>(Lcom/eltechs/axs/Keyboard;Lcom/eltechs/axs/KeyCodesX;I)V

    const/16 v2, 0x45

    aput-object v1, v0, v2

    .line 316
    iget-object v0, p0, Lcom/eltechs/axs/Keyboard;->UnicodeToXKeyMap:[Lcom/eltechs/axs/Keyboard$XKey;

    new-instance v1, Lcom/eltechs/axs/Keyboard$XKey;

    sget-object v2, Lcom/eltechs/axs/KeyCodesX;->KEY_M:Lcom/eltechs/axs/KeyCodesX;

    const/16 v3, 0x46

    invoke-direct {v1, p0, v2, v3}, Lcom/eltechs/axs/Keyboard$XKey;-><init>(Lcom/eltechs/axs/Keyboard;Lcom/eltechs/axs/KeyCodesX;I)V

    const/16 v2, 0x46

    aput-object v1, v0, v2

    .line 317
    iget-object v0, p0, Lcom/eltechs/axs/Keyboard;->UnicodeToXKeyMap:[Lcom/eltechs/axs/Keyboard$XKey;

    new-instance v1, Lcom/eltechs/axs/Keyboard$XKey;

    sget-object v2, Lcom/eltechs/axs/KeyCodesX;->KEY_N:Lcom/eltechs/axs/KeyCodesX;

    const/16 v3, 0x47

    invoke-direct {v1, p0, v2, v3}, Lcom/eltechs/axs/Keyboard$XKey;-><init>(Lcom/eltechs/axs/Keyboard;Lcom/eltechs/axs/KeyCodesX;I)V

    const/16 v2, 0x47

    aput-object v1, v0, v2

    .line 318
    iget-object v0, p0, Lcom/eltechs/axs/Keyboard;->UnicodeToXKeyMap:[Lcom/eltechs/axs/Keyboard$XKey;

    new-instance v1, Lcom/eltechs/axs/Keyboard$XKey;

    sget-object v2, Lcom/eltechs/axs/KeyCodesX;->KEY_O:Lcom/eltechs/axs/KeyCodesX;

    const/16 v3, 0x48

    invoke-direct {v1, p0, v2, v3}, Lcom/eltechs/axs/Keyboard$XKey;-><init>(Lcom/eltechs/axs/Keyboard;Lcom/eltechs/axs/KeyCodesX;I)V

    const/16 v2, 0x48

    aput-object v1, v0, v2

    .line 319
    iget-object v0, p0, Lcom/eltechs/axs/Keyboard;->UnicodeToXKeyMap:[Lcom/eltechs/axs/Keyboard$XKey;

    new-instance v1, Lcom/eltechs/axs/Keyboard$XKey;

    sget-object v2, Lcom/eltechs/axs/KeyCodesX;->KEY_P:Lcom/eltechs/axs/KeyCodesX;

    const/16 v3, 0x49

    invoke-direct {v1, p0, v2, v3}, Lcom/eltechs/axs/Keyboard$XKey;-><init>(Lcom/eltechs/axs/Keyboard;Lcom/eltechs/axs/KeyCodesX;I)V

    const/16 v2, 0x49

    aput-object v1, v0, v2

    .line 320
    iget-object v0, p0, Lcom/eltechs/axs/Keyboard;->UnicodeToXKeyMap:[Lcom/eltechs/axs/Keyboard$XKey;

    new-instance v1, Lcom/eltechs/axs/Keyboard$XKey;

    sget-object v2, Lcom/eltechs/axs/KeyCodesX;->KEY_Q:Lcom/eltechs/axs/KeyCodesX;

    const/16 v3, 0x4a

    invoke-direct {v1, p0, v2, v3}, Lcom/eltechs/axs/Keyboard$XKey;-><init>(Lcom/eltechs/axs/Keyboard;Lcom/eltechs/axs/KeyCodesX;I)V

    const/16 v2, 0x4a

    aput-object v1, v0, v2

    .line 321
    iget-object v0, p0, Lcom/eltechs/axs/Keyboard;->UnicodeToXKeyMap:[Lcom/eltechs/axs/Keyboard$XKey;

    new-instance v1, Lcom/eltechs/axs/Keyboard$XKey;

    sget-object v2, Lcom/eltechs/axs/KeyCodesX;->KEY_R:Lcom/eltechs/axs/KeyCodesX;

    const/16 v3, 0x4b

    invoke-direct {v1, p0, v2, v3}, Lcom/eltechs/axs/Keyboard$XKey;-><init>(Lcom/eltechs/axs/Keyboard;Lcom/eltechs/axs/KeyCodesX;I)V

    const/16 v2, 0x4b

    aput-object v1, v0, v2

    .line 322
    iget-object v0, p0, Lcom/eltechs/axs/Keyboard;->UnicodeToXKeyMap:[Lcom/eltechs/axs/Keyboard$XKey;

    new-instance v1, Lcom/eltechs/axs/Keyboard$XKey;

    sget-object v2, Lcom/eltechs/axs/KeyCodesX;->KEY_S:Lcom/eltechs/axs/KeyCodesX;

    const/16 v3, 0x4c

    invoke-direct {v1, p0, v2, v3}, Lcom/eltechs/axs/Keyboard$XKey;-><init>(Lcom/eltechs/axs/Keyboard;Lcom/eltechs/axs/KeyCodesX;I)V

    const/16 v2, 0x4c

    aput-object v1, v0, v2

    .line 323
    iget-object v0, p0, Lcom/eltechs/axs/Keyboard;->UnicodeToXKeyMap:[Lcom/eltechs/axs/Keyboard$XKey;

    new-instance v1, Lcom/eltechs/axs/Keyboard$XKey;

    sget-object v2, Lcom/eltechs/axs/KeyCodesX;->KEY_T:Lcom/eltechs/axs/KeyCodesX;

    const/16 v3, 0x4d

    invoke-direct {v1, p0, v2, v3}, Lcom/eltechs/axs/Keyboard$XKey;-><init>(Lcom/eltechs/axs/Keyboard;Lcom/eltechs/axs/KeyCodesX;I)V

    const/16 v2, 0x4d

    aput-object v1, v0, v2

    .line 324
    iget-object v0, p0, Lcom/eltechs/axs/Keyboard;->UnicodeToXKeyMap:[Lcom/eltechs/axs/Keyboard$XKey;

    new-instance v1, Lcom/eltechs/axs/Keyboard$XKey;

    sget-object v2, Lcom/eltechs/axs/KeyCodesX;->KEY_U:Lcom/eltechs/axs/KeyCodesX;

    const/16 v3, 0x4e

    invoke-direct {v1, p0, v2, v3}, Lcom/eltechs/axs/Keyboard$XKey;-><init>(Lcom/eltechs/axs/Keyboard;Lcom/eltechs/axs/KeyCodesX;I)V

    const/16 v2, 0x4e

    aput-object v1, v0, v2

    .line 325
    iget-object v0, p0, Lcom/eltechs/axs/Keyboard;->UnicodeToXKeyMap:[Lcom/eltechs/axs/Keyboard$XKey;

    new-instance v1, Lcom/eltechs/axs/Keyboard$XKey;

    sget-object v2, Lcom/eltechs/axs/KeyCodesX;->KEY_V:Lcom/eltechs/axs/KeyCodesX;

    const/16 v3, 0x4f

    invoke-direct {v1, p0, v2, v3}, Lcom/eltechs/axs/Keyboard$XKey;-><init>(Lcom/eltechs/axs/Keyboard;Lcom/eltechs/axs/KeyCodesX;I)V

    const/16 v2, 0x4f

    aput-object v1, v0, v2

    .line 326
    iget-object v0, p0, Lcom/eltechs/axs/Keyboard;->UnicodeToXKeyMap:[Lcom/eltechs/axs/Keyboard$XKey;

    new-instance v1, Lcom/eltechs/axs/Keyboard$XKey;

    sget-object v2, Lcom/eltechs/axs/KeyCodesX;->KEY_W:Lcom/eltechs/axs/KeyCodesX;

    const/16 v3, 0x50

    invoke-direct {v1, p0, v2, v3}, Lcom/eltechs/axs/Keyboard$XKey;-><init>(Lcom/eltechs/axs/Keyboard;Lcom/eltechs/axs/KeyCodesX;I)V

    const/16 v2, 0x50

    aput-object v1, v0, v2

    .line 327
    iget-object v0, p0, Lcom/eltechs/axs/Keyboard;->UnicodeToXKeyMap:[Lcom/eltechs/axs/Keyboard$XKey;

    new-instance v1, Lcom/eltechs/axs/Keyboard$XKey;

    sget-object v2, Lcom/eltechs/axs/KeyCodesX;->KEY_X:Lcom/eltechs/axs/KeyCodesX;

    const/16 v3, 0x51

    invoke-direct {v1, p0, v2, v3}, Lcom/eltechs/axs/Keyboard$XKey;-><init>(Lcom/eltechs/axs/Keyboard;Lcom/eltechs/axs/KeyCodesX;I)V

    const/16 v2, 0x51

    aput-object v1, v0, v2

    .line 328
    iget-object v0, p0, Lcom/eltechs/axs/Keyboard;->UnicodeToXKeyMap:[Lcom/eltechs/axs/Keyboard$XKey;

    new-instance v1, Lcom/eltechs/axs/Keyboard$XKey;

    sget-object v2, Lcom/eltechs/axs/KeyCodesX;->KEY_Y:Lcom/eltechs/axs/KeyCodesX;

    const/16 v3, 0x52

    invoke-direct {v1, p0, v2, v3}, Lcom/eltechs/axs/Keyboard$XKey;-><init>(Lcom/eltechs/axs/Keyboard;Lcom/eltechs/axs/KeyCodesX;I)V

    const/16 v2, 0x52

    aput-object v1, v0, v2

    .line 329
    iget-object v0, p0, Lcom/eltechs/axs/Keyboard;->UnicodeToXKeyMap:[Lcom/eltechs/axs/Keyboard$XKey;

    new-instance v1, Lcom/eltechs/axs/Keyboard$XKey;

    sget-object v2, Lcom/eltechs/axs/KeyCodesX;->KEY_Z:Lcom/eltechs/axs/KeyCodesX;

    const/16 v3, 0x53

    invoke-direct {v1, p0, v2, v3}, Lcom/eltechs/axs/Keyboard$XKey;-><init>(Lcom/eltechs/axs/Keyboard;Lcom/eltechs/axs/KeyCodesX;I)V

    const/16 v2, 0x53

    aput-object v1, v0, v2

    .line 330
    iget-object v0, p0, Lcom/eltechs/axs/Keyboard;->UnicodeToXKeyMap:[Lcom/eltechs/axs/Keyboard$XKey;

    new-instance v1, Lcom/eltechs/axs/Keyboard$XKey;

    sget-object v2, Lcom/eltechs/axs/KeyCodesX;->KEY_A:Lcom/eltechs/axs/KeyCodesX;

    const/16 v3, 0x54

    invoke-direct {v1, p0, v2, v3}, Lcom/eltechs/axs/Keyboard$XKey;-><init>(Lcom/eltechs/axs/Keyboard;Lcom/eltechs/axs/KeyCodesX;I)V

    const/16 v2, 0x54

    aput-object v1, v0, v2

    .line 331
    iget-object v0, p0, Lcom/eltechs/axs/Keyboard;->UnicodeToXKeyMap:[Lcom/eltechs/axs/Keyboard$XKey;

    new-instance v1, Lcom/eltechs/axs/Keyboard$XKey;

    sget-object v2, Lcom/eltechs/axs/KeyCodesX;->KEY_B:Lcom/eltechs/axs/KeyCodesX;

    const/16 v3, 0x55

    invoke-direct {v1, p0, v2, v3}, Lcom/eltechs/axs/Keyboard$XKey;-><init>(Lcom/eltechs/axs/Keyboard;Lcom/eltechs/axs/KeyCodesX;I)V

    const/16 v2, 0x55

    aput-object v1, v0, v2

    .line 332
    iget-object v0, p0, Lcom/eltechs/axs/Keyboard;->UnicodeToXKeyMap:[Lcom/eltechs/axs/Keyboard$XKey;

    new-instance v1, Lcom/eltechs/axs/Keyboard$XKey;

    sget-object v2, Lcom/eltechs/axs/KeyCodesX;->KEY_C:Lcom/eltechs/axs/KeyCodesX;

    const/16 v3, 0x56

    invoke-direct {v1, p0, v2, v3}, Lcom/eltechs/axs/Keyboard$XKey;-><init>(Lcom/eltechs/axs/Keyboard;Lcom/eltechs/axs/KeyCodesX;I)V

    const/16 v2, 0x56

    aput-object v1, v0, v2

    .line 333
    iget-object v0, p0, Lcom/eltechs/axs/Keyboard;->UnicodeToXKeyMap:[Lcom/eltechs/axs/Keyboard$XKey;

    new-instance v1, Lcom/eltechs/axs/Keyboard$XKey;

    sget-object v2, Lcom/eltechs/axs/KeyCodesX;->KEY_D:Lcom/eltechs/axs/KeyCodesX;

    const/16 v3, 0x57

    invoke-direct {v1, p0, v2, v3}, Lcom/eltechs/axs/Keyboard$XKey;-><init>(Lcom/eltechs/axs/Keyboard;Lcom/eltechs/axs/KeyCodesX;I)V

    const/16 v2, 0x57

    aput-object v1, v0, v2

    .line 334
    iget-object v0, p0, Lcom/eltechs/axs/Keyboard;->UnicodeToXKeyMap:[Lcom/eltechs/axs/Keyboard$XKey;

    new-instance v1, Lcom/eltechs/axs/Keyboard$XKey;

    sget-object v2, Lcom/eltechs/axs/KeyCodesX;->KEY_E:Lcom/eltechs/axs/KeyCodesX;

    const/16 v3, 0x58

    invoke-direct {v1, p0, v2, v3}, Lcom/eltechs/axs/Keyboard$XKey;-><init>(Lcom/eltechs/axs/Keyboard;Lcom/eltechs/axs/KeyCodesX;I)V

    const/16 v2, 0x58

    aput-object v1, v0, v2

    .line 335
    iget-object v0, p0, Lcom/eltechs/axs/Keyboard;->UnicodeToXKeyMap:[Lcom/eltechs/axs/Keyboard$XKey;

    new-instance v1, Lcom/eltechs/axs/Keyboard$XKey;

    sget-object v2, Lcom/eltechs/axs/KeyCodesX;->KEY_F:Lcom/eltechs/axs/KeyCodesX;

    const/16 v3, 0x59

    invoke-direct {v1, p0, v2, v3}, Lcom/eltechs/axs/Keyboard$XKey;-><init>(Lcom/eltechs/axs/Keyboard;Lcom/eltechs/axs/KeyCodesX;I)V

    const/16 v2, 0x59

    aput-object v1, v0, v2

    .line 336
    iget-object v0, p0, Lcom/eltechs/axs/Keyboard;->UnicodeToXKeyMap:[Lcom/eltechs/axs/Keyboard$XKey;

    new-instance v1, Lcom/eltechs/axs/Keyboard$XKey;

    sget-object v2, Lcom/eltechs/axs/KeyCodesX;->KEY_G:Lcom/eltechs/axs/KeyCodesX;

    const/16 v3, 0x5a

    invoke-direct {v1, p0, v2, v3}, Lcom/eltechs/axs/Keyboard$XKey;-><init>(Lcom/eltechs/axs/Keyboard;Lcom/eltechs/axs/KeyCodesX;I)V

    const/16 v2, 0x5a

    aput-object v1, v0, v2

    .line 337
    iget-object v0, p0, Lcom/eltechs/axs/Keyboard;->UnicodeToXKeyMap:[Lcom/eltechs/axs/Keyboard$XKey;

    new-instance v1, Lcom/eltechs/axs/Keyboard$XKey;

    sget-object v2, Lcom/eltechs/axs/KeyCodesX;->KEY_H:Lcom/eltechs/axs/KeyCodesX;

    const/16 v3, 0x5b

    invoke-direct {v1, p0, v2, v3}, Lcom/eltechs/axs/Keyboard$XKey;-><init>(Lcom/eltechs/axs/Keyboard;Lcom/eltechs/axs/KeyCodesX;I)V

    const/16 v2, 0x5b

    aput-object v1, v0, v2

    .line 338
    iget-object v0, p0, Lcom/eltechs/axs/Keyboard;->UnicodeToXKeyMap:[Lcom/eltechs/axs/Keyboard$XKey;

    new-instance v1, Lcom/eltechs/axs/Keyboard$XKey;

    sget-object v2, Lcom/eltechs/axs/KeyCodesX;->KEY_I:Lcom/eltechs/axs/KeyCodesX;

    const/16 v3, 0x5c

    invoke-direct {v1, p0, v2, v3}, Lcom/eltechs/axs/Keyboard$XKey;-><init>(Lcom/eltechs/axs/Keyboard;Lcom/eltechs/axs/KeyCodesX;I)V

    const/16 v2, 0x5c

    aput-object v1, v0, v2

    .line 339
    iget-object v0, p0, Lcom/eltechs/axs/Keyboard;->UnicodeToXKeyMap:[Lcom/eltechs/axs/Keyboard$XKey;

    new-instance v1, Lcom/eltechs/axs/Keyboard$XKey;

    sget-object v2, Lcom/eltechs/axs/KeyCodesX;->KEY_J:Lcom/eltechs/axs/KeyCodesX;

    const/16 v3, 0x5d

    invoke-direct {v1, p0, v2, v3}, Lcom/eltechs/axs/Keyboard$XKey;-><init>(Lcom/eltechs/axs/Keyboard;Lcom/eltechs/axs/KeyCodesX;I)V

    const/16 v2, 0x5d

    aput-object v1, v0, v2

    .line 340
    iget-object v0, p0, Lcom/eltechs/axs/Keyboard;->UnicodeToXKeyMap:[Lcom/eltechs/axs/Keyboard$XKey;

    new-instance v1, Lcom/eltechs/axs/Keyboard$XKey;

    sget-object v2, Lcom/eltechs/axs/KeyCodesX;->KEY_K:Lcom/eltechs/axs/KeyCodesX;

    const/16 v3, 0x5e

    invoke-direct {v1, p0, v2, v3}, Lcom/eltechs/axs/Keyboard$XKey;-><init>(Lcom/eltechs/axs/Keyboard;Lcom/eltechs/axs/KeyCodesX;I)V

    const/16 v2, 0x5e

    aput-object v1, v0, v2

    .line 341
    iget-object v0, p0, Lcom/eltechs/axs/Keyboard;->UnicodeToXKeyMap:[Lcom/eltechs/axs/Keyboard$XKey;

    new-instance v1, Lcom/eltechs/axs/Keyboard$XKey;

    sget-object v2, Lcom/eltechs/axs/KeyCodesX;->KEY_L:Lcom/eltechs/axs/KeyCodesX;

    const/16 v3, 0x5f

    invoke-direct {v1, p0, v2, v3}, Lcom/eltechs/axs/Keyboard$XKey;-><init>(Lcom/eltechs/axs/Keyboard;Lcom/eltechs/axs/KeyCodesX;I)V

    const/16 v2, 0x5f

    aput-object v1, v0, v2

    .line 342
    iget-object v0, p0, Lcom/eltechs/axs/Keyboard;->UnicodeToXKeyMap:[Lcom/eltechs/axs/Keyboard$XKey;

    new-instance v1, Lcom/eltechs/axs/Keyboard$XKey;

    sget-object v2, Lcom/eltechs/axs/KeyCodesX;->KEY_M:Lcom/eltechs/axs/KeyCodesX;

    const/16 v3, 0x60

    invoke-direct {v1, p0, v2, v3}, Lcom/eltechs/axs/Keyboard$XKey;-><init>(Lcom/eltechs/axs/Keyboard;Lcom/eltechs/axs/KeyCodesX;I)V

    const/16 v2, 0x60

    aput-object v1, v0, v2

    .line 343
    iget-object v0, p0, Lcom/eltechs/axs/Keyboard;->UnicodeToXKeyMap:[Lcom/eltechs/axs/Keyboard$XKey;

    new-instance v1, Lcom/eltechs/axs/Keyboard$XKey;

    sget-object v2, Lcom/eltechs/axs/KeyCodesX;->KEY_N:Lcom/eltechs/axs/KeyCodesX;

    const/16 v3, 0x61

    invoke-direct {v1, p0, v2, v3}, Lcom/eltechs/axs/Keyboard$XKey;-><init>(Lcom/eltechs/axs/Keyboard;Lcom/eltechs/axs/KeyCodesX;I)V

    const/16 v2, 0x61

    aput-object v1, v0, v2

    .line 344
    iget-object v0, p0, Lcom/eltechs/axs/Keyboard;->UnicodeToXKeyMap:[Lcom/eltechs/axs/Keyboard$XKey;

    new-instance v1, Lcom/eltechs/axs/Keyboard$XKey;

    sget-object v2, Lcom/eltechs/axs/KeyCodesX;->KEY_O:Lcom/eltechs/axs/KeyCodesX;

    const/16 v3, 0x62

    invoke-direct {v1, p0, v2, v3}, Lcom/eltechs/axs/Keyboard$XKey;-><init>(Lcom/eltechs/axs/Keyboard;Lcom/eltechs/axs/KeyCodesX;I)V

    const/16 v2, 0x62

    aput-object v1, v0, v2

    .line 345
    iget-object v0, p0, Lcom/eltechs/axs/Keyboard;->UnicodeToXKeyMap:[Lcom/eltechs/axs/Keyboard$XKey;

    new-instance v1, Lcom/eltechs/axs/Keyboard$XKey;

    sget-object v2, Lcom/eltechs/axs/KeyCodesX;->KEY_P:Lcom/eltechs/axs/KeyCodesX;

    const/16 v3, 0x63

    invoke-direct {v1, p0, v2, v3}, Lcom/eltechs/axs/Keyboard$XKey;-><init>(Lcom/eltechs/axs/Keyboard;Lcom/eltechs/axs/KeyCodesX;I)V

    const/16 v2, 0x63

    aput-object v1, v0, v2

    .line 346
    iget-object v0, p0, Lcom/eltechs/axs/Keyboard;->UnicodeToXKeyMap:[Lcom/eltechs/axs/Keyboard$XKey;

    new-instance v1, Lcom/eltechs/axs/Keyboard$XKey;

    sget-object v2, Lcom/eltechs/axs/KeyCodesX;->KEY_Q:Lcom/eltechs/axs/KeyCodesX;

    const/16 v3, 0x64

    invoke-direct {v1, p0, v2, v3}, Lcom/eltechs/axs/Keyboard$XKey;-><init>(Lcom/eltechs/axs/Keyboard;Lcom/eltechs/axs/KeyCodesX;I)V

    const/16 v2, 0x64

    aput-object v1, v0, v2

    .line 347
    iget-object v0, p0, Lcom/eltechs/axs/Keyboard;->UnicodeToXKeyMap:[Lcom/eltechs/axs/Keyboard$XKey;

    new-instance v1, Lcom/eltechs/axs/Keyboard$XKey;

    sget-object v2, Lcom/eltechs/axs/KeyCodesX;->KEY_R:Lcom/eltechs/axs/KeyCodesX;

    const/16 v3, 0x65

    invoke-direct {v1, p0, v2, v3}, Lcom/eltechs/axs/Keyboard$XKey;-><init>(Lcom/eltechs/axs/Keyboard;Lcom/eltechs/axs/KeyCodesX;I)V

    const/16 v2, 0x65

    aput-object v1, v0, v2

    .line 348
    iget-object v0, p0, Lcom/eltechs/axs/Keyboard;->UnicodeToXKeyMap:[Lcom/eltechs/axs/Keyboard$XKey;

    new-instance v1, Lcom/eltechs/axs/Keyboard$XKey;

    sget-object v2, Lcom/eltechs/axs/KeyCodesX;->KEY_S:Lcom/eltechs/axs/KeyCodesX;

    const/16 v3, 0x66

    invoke-direct {v1, p0, v2, v3}, Lcom/eltechs/axs/Keyboard$XKey;-><init>(Lcom/eltechs/axs/Keyboard;Lcom/eltechs/axs/KeyCodesX;I)V

    const/16 v2, 0x66

    aput-object v1, v0, v2

    .line 349
    iget-object v0, p0, Lcom/eltechs/axs/Keyboard;->UnicodeToXKeyMap:[Lcom/eltechs/axs/Keyboard$XKey;

    new-instance v1, Lcom/eltechs/axs/Keyboard$XKey;

    sget-object v2, Lcom/eltechs/axs/KeyCodesX;->KEY_T:Lcom/eltechs/axs/KeyCodesX;

    const/16 v3, 0x67

    invoke-direct {v1, p0, v2, v3}, Lcom/eltechs/axs/Keyboard$XKey;-><init>(Lcom/eltechs/axs/Keyboard;Lcom/eltechs/axs/KeyCodesX;I)V

    const/16 v2, 0x67

    aput-object v1, v0, v2

    .line 350
    iget-object v0, p0, Lcom/eltechs/axs/Keyboard;->UnicodeToXKeyMap:[Lcom/eltechs/axs/Keyboard$XKey;

    new-instance v1, Lcom/eltechs/axs/Keyboard$XKey;

    sget-object v2, Lcom/eltechs/axs/KeyCodesX;->KEY_U:Lcom/eltechs/axs/KeyCodesX;

    const/16 v3, 0x68

    invoke-direct {v1, p0, v2, v3}, Lcom/eltechs/axs/Keyboard$XKey;-><init>(Lcom/eltechs/axs/Keyboard;Lcom/eltechs/axs/KeyCodesX;I)V

    const/16 v2, 0x68

    aput-object v1, v0, v2

    .line 351
    iget-object v0, p0, Lcom/eltechs/axs/Keyboard;->UnicodeToXKeyMap:[Lcom/eltechs/axs/Keyboard$XKey;

    new-instance v1, Lcom/eltechs/axs/Keyboard$XKey;

    sget-object v2, Lcom/eltechs/axs/KeyCodesX;->KEY_V:Lcom/eltechs/axs/KeyCodesX;

    const/16 v3, 0x69

    invoke-direct {v1, p0, v2, v3}, Lcom/eltechs/axs/Keyboard$XKey;-><init>(Lcom/eltechs/axs/Keyboard;Lcom/eltechs/axs/KeyCodesX;I)V

    const/16 v2, 0x69

    aput-object v1, v0, v2

    .line 352
    iget-object v0, p0, Lcom/eltechs/axs/Keyboard;->UnicodeToXKeyMap:[Lcom/eltechs/axs/Keyboard$XKey;

    new-instance v1, Lcom/eltechs/axs/Keyboard$XKey;

    sget-object v2, Lcom/eltechs/axs/KeyCodesX;->KEY_W:Lcom/eltechs/axs/KeyCodesX;

    const/16 v3, 0x6a

    invoke-direct {v1, p0, v2, v3}, Lcom/eltechs/axs/Keyboard$XKey;-><init>(Lcom/eltechs/axs/Keyboard;Lcom/eltechs/axs/KeyCodesX;I)V

    const/16 v2, 0x6a

    aput-object v1, v0, v2

    .line 353
    iget-object v0, p0, Lcom/eltechs/axs/Keyboard;->UnicodeToXKeyMap:[Lcom/eltechs/axs/Keyboard$XKey;

    new-instance v1, Lcom/eltechs/axs/Keyboard$XKey;

    sget-object v2, Lcom/eltechs/axs/KeyCodesX;->KEY_X:Lcom/eltechs/axs/KeyCodesX;

    const/16 v3, 0x6b

    invoke-direct {v1, p0, v2, v3}, Lcom/eltechs/axs/Keyboard$XKey;-><init>(Lcom/eltechs/axs/Keyboard;Lcom/eltechs/axs/KeyCodesX;I)V

    const/16 v2, 0x6b

    aput-object v1, v0, v2

    .line 354
    iget-object v0, p0, Lcom/eltechs/axs/Keyboard;->UnicodeToXKeyMap:[Lcom/eltechs/axs/Keyboard$XKey;

    new-instance v1, Lcom/eltechs/axs/Keyboard$XKey;

    sget-object v2, Lcom/eltechs/axs/KeyCodesX;->KEY_Y:Lcom/eltechs/axs/KeyCodesX;

    const/16 v3, 0x6c

    invoke-direct {v1, p0, v2, v3}, Lcom/eltechs/axs/Keyboard$XKey;-><init>(Lcom/eltechs/axs/Keyboard;Lcom/eltechs/axs/KeyCodesX;I)V

    const/16 v2, 0x6c

    aput-object v1, v0, v2

    .line 355
    iget-object v0, p0, Lcom/eltechs/axs/Keyboard;->UnicodeToXKeyMap:[Lcom/eltechs/axs/Keyboard$XKey;

    new-instance v1, Lcom/eltechs/axs/Keyboard$XKey;

    sget-object v2, Lcom/eltechs/axs/KeyCodesX;->KEY_Z:Lcom/eltechs/axs/KeyCodesX;

    const/16 v3, 0x6d

    invoke-direct {v1, p0, v2, v3}, Lcom/eltechs/axs/Keyboard$XKey;-><init>(Lcom/eltechs/axs/Keyboard;Lcom/eltechs/axs/KeyCodesX;I)V

    const/16 v2, 0x6d

    aput-object v1, v0, v2

    .line 356
    iget-object v0, p0, Lcom/eltechs/axs/Keyboard;->UnicodeToXKeyMap:[Lcom/eltechs/axs/Keyboard$XKey;

    new-instance v1, Lcom/eltechs/axs/Keyboard$XKey;

    sget-object v2, Lcom/eltechs/axs/KeyCodesX;->KEY_A:Lcom/eltechs/axs/KeyCodesX;

    const/16 v3, 0x6e

    invoke-direct {v1, p0, v2, v3}, Lcom/eltechs/axs/Keyboard$XKey;-><init>(Lcom/eltechs/axs/Keyboard;Lcom/eltechs/axs/KeyCodesX;I)V

    const/16 v2, 0x6e

    aput-object v1, v0, v2

    .line 357
    iget-object v0, p0, Lcom/eltechs/axs/Keyboard;->UnicodeToXKeyMap:[Lcom/eltechs/axs/Keyboard$XKey;

    new-instance v1, Lcom/eltechs/axs/Keyboard$XKey;

    sget-object v2, Lcom/eltechs/axs/KeyCodesX;->KEY_B:Lcom/eltechs/axs/KeyCodesX;

    const/16 v3, 0x6f

    invoke-direct {v1, p0, v2, v3}, Lcom/eltechs/axs/Keyboard$XKey;-><init>(Lcom/eltechs/axs/Keyboard;Lcom/eltechs/axs/KeyCodesX;I)V

    const/16 v2, 0x6f

    aput-object v1, v0, v2

    .line 358
    iget-object v0, p0, Lcom/eltechs/axs/Keyboard;->UnicodeToXKeyMap:[Lcom/eltechs/axs/Keyboard$XKey;

    new-instance v1, Lcom/eltechs/axs/Keyboard$XKey;

    sget-object v2, Lcom/eltechs/axs/KeyCodesX;->KEY_C:Lcom/eltechs/axs/KeyCodesX;

    const/16 v3, 0x70

    invoke-direct {v1, p0, v2, v3}, Lcom/eltechs/axs/Keyboard$XKey;-><init>(Lcom/eltechs/axs/Keyboard;Lcom/eltechs/axs/KeyCodesX;I)V

    const/16 v2, 0x70

    aput-object v1, v0, v2

    .line 359
    iget-object v0, p0, Lcom/eltechs/axs/Keyboard;->UnicodeToXKeyMap:[Lcom/eltechs/axs/Keyboard$XKey;

    new-instance v1, Lcom/eltechs/axs/Keyboard$XKey;

    sget-object v2, Lcom/eltechs/axs/KeyCodesX;->KEY_D:Lcom/eltechs/axs/KeyCodesX;

    const/16 v3, 0x71

    invoke-direct {v1, p0, v2, v3}, Lcom/eltechs/axs/Keyboard$XKey;-><init>(Lcom/eltechs/axs/Keyboard;Lcom/eltechs/axs/KeyCodesX;I)V

    const/16 v2, 0x71

    aput-object v1, v0, v2

    .line 360
    iget-object v0, p0, Lcom/eltechs/axs/Keyboard;->UnicodeToXKeyMap:[Lcom/eltechs/axs/Keyboard$XKey;

    new-instance v1, Lcom/eltechs/axs/Keyboard$XKey;

    sget-object v2, Lcom/eltechs/axs/KeyCodesX;->KEY_E:Lcom/eltechs/axs/KeyCodesX;

    const/16 v3, 0x72

    invoke-direct {v1, p0, v2, v3}, Lcom/eltechs/axs/Keyboard$XKey;-><init>(Lcom/eltechs/axs/Keyboard;Lcom/eltechs/axs/KeyCodesX;I)V

    const/16 v2, 0x72

    aput-object v1, v0, v2

    .line 361
    iget-object v0, p0, Lcom/eltechs/axs/Keyboard;->UnicodeToXKeyMap:[Lcom/eltechs/axs/Keyboard$XKey;

    new-instance v1, Lcom/eltechs/axs/Keyboard$XKey;

    sget-object v2, Lcom/eltechs/axs/KeyCodesX;->KEY_F:Lcom/eltechs/axs/KeyCodesX;

    const/16 v3, 0x73

    invoke-direct {v1, p0, v2, v3}, Lcom/eltechs/axs/Keyboard$XKey;-><init>(Lcom/eltechs/axs/Keyboard;Lcom/eltechs/axs/KeyCodesX;I)V

    const/16 v2, 0x73

    aput-object v1, v0, v2

    .line 362
    iget-object v0, p0, Lcom/eltechs/axs/Keyboard;->UnicodeToXKeyMap:[Lcom/eltechs/axs/Keyboard$XKey;

    new-instance v1, Lcom/eltechs/axs/Keyboard$XKey;

    sget-object v2, Lcom/eltechs/axs/KeyCodesX;->KEY_G:Lcom/eltechs/axs/KeyCodesX;

    const/16 v3, 0x74

    invoke-direct {v1, p0, v2, v3}, Lcom/eltechs/axs/Keyboard$XKey;-><init>(Lcom/eltechs/axs/Keyboard;Lcom/eltechs/axs/KeyCodesX;I)V

    const/16 v2, 0x74

    aput-object v1, v0, v2

    .line 363
    iget-object v0, p0, Lcom/eltechs/axs/Keyboard;->UnicodeToXKeyMap:[Lcom/eltechs/axs/Keyboard$XKey;

    new-instance v1, Lcom/eltechs/axs/Keyboard$XKey;

    sget-object v2, Lcom/eltechs/axs/KeyCodesX;->KEY_H:Lcom/eltechs/axs/KeyCodesX;

    const/16 v3, 0x75

    invoke-direct {v1, p0, v2, v3}, Lcom/eltechs/axs/Keyboard$XKey;-><init>(Lcom/eltechs/axs/Keyboard;Lcom/eltechs/axs/KeyCodesX;I)V

    const/16 v2, 0x75

    aput-object v1, v0, v2

    .line 364
    iget-object v0, p0, Lcom/eltechs/axs/Keyboard;->UnicodeToXKeyMap:[Lcom/eltechs/axs/Keyboard$XKey;

    new-instance v1, Lcom/eltechs/axs/Keyboard$XKey;

    sget-object v2, Lcom/eltechs/axs/KeyCodesX;->KEY_I:Lcom/eltechs/axs/KeyCodesX;

    const/16 v3, 0x76

    invoke-direct {v1, p0, v2, v3}, Lcom/eltechs/axs/Keyboard$XKey;-><init>(Lcom/eltechs/axs/Keyboard;Lcom/eltechs/axs/KeyCodesX;I)V

    const/16 v2, 0x76

    aput-object v1, v0, v2

    .line 365
    iget-object v0, p0, Lcom/eltechs/axs/Keyboard;->UnicodeToXKeyMap:[Lcom/eltechs/axs/Keyboard$XKey;

    new-instance v1, Lcom/eltechs/axs/Keyboard$XKey;

    sget-object v2, Lcom/eltechs/axs/KeyCodesX;->KEY_J:Lcom/eltechs/axs/KeyCodesX;

    const/16 v3, 0x77

    invoke-direct {v1, p0, v2, v3}, Lcom/eltechs/axs/Keyboard$XKey;-><init>(Lcom/eltechs/axs/Keyboard;Lcom/eltechs/axs/KeyCodesX;I)V

    const/16 v2, 0x77

    aput-object v1, v0, v2

    .line 366
    iget-object v0, p0, Lcom/eltechs/axs/Keyboard;->UnicodeToXKeyMap:[Lcom/eltechs/axs/Keyboard$XKey;

    new-instance v1, Lcom/eltechs/axs/Keyboard$XKey;

    sget-object v2, Lcom/eltechs/axs/KeyCodesX;->KEY_K:Lcom/eltechs/axs/KeyCodesX;

    const/16 v3, 0x78

    invoke-direct {v1, p0, v2, v3}, Lcom/eltechs/axs/Keyboard$XKey;-><init>(Lcom/eltechs/axs/Keyboard;Lcom/eltechs/axs/KeyCodesX;I)V

    const/16 v2, 0x78

    aput-object v1, v0, v2

    .line 367
    iget-object v0, p0, Lcom/eltechs/axs/Keyboard;->UnicodeToXKeyMap:[Lcom/eltechs/axs/Keyboard$XKey;

    new-instance v1, Lcom/eltechs/axs/Keyboard$XKey;

    sget-object v2, Lcom/eltechs/axs/KeyCodesX;->KEY_L:Lcom/eltechs/axs/KeyCodesX;

    const/16 v3, 0x79

    invoke-direct {v1, p0, v2, v3}, Lcom/eltechs/axs/Keyboard$XKey;-><init>(Lcom/eltechs/axs/Keyboard;Lcom/eltechs/axs/KeyCodesX;I)V

    const/16 v2, 0x79

    aput-object v1, v0, v2

    .line 368
    iget-object v0, p0, Lcom/eltechs/axs/Keyboard;->UnicodeToXKeyMap:[Lcom/eltechs/axs/Keyboard$XKey;

    new-instance v1, Lcom/eltechs/axs/Keyboard$XKey;

    sget-object v2, Lcom/eltechs/axs/KeyCodesX;->KEY_M:Lcom/eltechs/axs/KeyCodesX;

    const/16 v3, 0x7a

    invoke-direct {v1, p0, v2, v3}, Lcom/eltechs/axs/Keyboard$XKey;-><init>(Lcom/eltechs/axs/Keyboard;Lcom/eltechs/axs/KeyCodesX;I)V

    const/16 v2, 0x7a

    aput-object v1, v0, v2

    .line 369
    iget-object v0, p0, Lcom/eltechs/axs/Keyboard;->UnicodeToXKeyMap:[Lcom/eltechs/axs/Keyboard$XKey;

    new-instance v1, Lcom/eltechs/axs/Keyboard$XKey;

    sget-object v2, Lcom/eltechs/axs/KeyCodesX;->KEY_N:Lcom/eltechs/axs/KeyCodesX;

    const/16 v3, 0x7b

    invoke-direct {v1, p0, v2, v3}, Lcom/eltechs/axs/Keyboard$XKey;-><init>(Lcom/eltechs/axs/Keyboard;Lcom/eltechs/axs/KeyCodesX;I)V

    const/16 v2, 0x7b

    aput-object v1, v0, v2

    .line 370
    iget-object v0, p0, Lcom/eltechs/axs/Keyboard;->UnicodeToXKeyMap:[Lcom/eltechs/axs/Keyboard$XKey;

    new-instance v1, Lcom/eltechs/axs/Keyboard$XKey;

    sget-object v2, Lcom/eltechs/axs/KeyCodesX;->KEY_O:Lcom/eltechs/axs/KeyCodesX;

    const/16 v3, 0x7c

    invoke-direct {v1, p0, v2, v3}, Lcom/eltechs/axs/Keyboard$XKey;-><init>(Lcom/eltechs/axs/Keyboard;Lcom/eltechs/axs/KeyCodesX;I)V

    const/16 v2, 0x7c

    aput-object v1, v0, v2

    .line 371
    iget-object v0, p0, Lcom/eltechs/axs/Keyboard;->UnicodeToXKeyMap:[Lcom/eltechs/axs/Keyboard$XKey;

    new-instance v1, Lcom/eltechs/axs/Keyboard$XKey;

    sget-object v2, Lcom/eltechs/axs/KeyCodesX;->KEY_P:Lcom/eltechs/axs/KeyCodesX;

    const/16 v3, 0x7d

    invoke-direct {v1, p0, v2, v3}, Lcom/eltechs/axs/Keyboard$XKey;-><init>(Lcom/eltechs/axs/Keyboard;Lcom/eltechs/axs/KeyCodesX;I)V

    const/16 v2, 0x7d

    aput-object v1, v0, v2

    .line 372
    iget-object v0, p0, Lcom/eltechs/axs/Keyboard;->UnicodeToXKeyMap:[Lcom/eltechs/axs/Keyboard$XKey;

    new-instance v1, Lcom/eltechs/axs/Keyboard$XKey;

    sget-object v2, Lcom/eltechs/axs/KeyCodesX;->KEY_Q:Lcom/eltechs/axs/KeyCodesX;

    const/16 v3, 0x7e

    invoke-direct {v1, p0, v2, v3}, Lcom/eltechs/axs/Keyboard$XKey;-><init>(Lcom/eltechs/axs/Keyboard;Lcom/eltechs/axs/KeyCodesX;I)V

    const/16 v2, 0x7e

    aput-object v1, v0, v2

    .line 373
    iget-object v0, p0, Lcom/eltechs/axs/Keyboard;->UnicodeToXKeyMap:[Lcom/eltechs/axs/Keyboard$XKey;

    new-instance v1, Lcom/eltechs/axs/Keyboard$XKey;

    sget-object v2, Lcom/eltechs/axs/KeyCodesX;->KEY_R:Lcom/eltechs/axs/KeyCodesX;

    const/16 v3, 0xa0

    invoke-direct {v1, p0, v2, v3}, Lcom/eltechs/axs/Keyboard$XKey;-><init>(Lcom/eltechs/axs/Keyboard;Lcom/eltechs/axs/KeyCodesX;I)V

    const/16 v2, 0xa0

    aput-object v1, v0, v2

    .line 374
    iget-object v0, p0, Lcom/eltechs/axs/Keyboard;->UnicodeToXKeyMap:[Lcom/eltechs/axs/Keyboard$XKey;

    new-instance v1, Lcom/eltechs/axs/Keyboard$XKey;

    sget-object v2, Lcom/eltechs/axs/KeyCodesX;->KEY_S:Lcom/eltechs/axs/KeyCodesX;

    const/16 v3, 0xa1

    invoke-direct {v1, p0, v2, v3}, Lcom/eltechs/axs/Keyboard$XKey;-><init>(Lcom/eltechs/axs/Keyboard;Lcom/eltechs/axs/KeyCodesX;I)V

    const/16 v2, 0xa1

    aput-object v1, v0, v2

    .line 375
    iget-object v0, p0, Lcom/eltechs/axs/Keyboard;->UnicodeToXKeyMap:[Lcom/eltechs/axs/Keyboard$XKey;

    new-instance v1, Lcom/eltechs/axs/Keyboard$XKey;

    sget-object v2, Lcom/eltechs/axs/KeyCodesX;->KEY_T:Lcom/eltechs/axs/KeyCodesX;

    const/16 v3, 0xa2

    invoke-direct {v1, p0, v2, v3}, Lcom/eltechs/axs/Keyboard$XKey;-><init>(Lcom/eltechs/axs/Keyboard;Lcom/eltechs/axs/KeyCodesX;I)V

    const/16 v2, 0xa2

    aput-object v1, v0, v2

    .line 376
    iget-object v0, p0, Lcom/eltechs/axs/Keyboard;->UnicodeToXKeyMap:[Lcom/eltechs/axs/Keyboard$XKey;

    new-instance v1, Lcom/eltechs/axs/Keyboard$XKey;

    sget-object v2, Lcom/eltechs/axs/KeyCodesX;->KEY_U:Lcom/eltechs/axs/KeyCodesX;

    const/16 v3, 0xa3

    invoke-direct {v1, p0, v2, v3}, Lcom/eltechs/axs/Keyboard$XKey;-><init>(Lcom/eltechs/axs/Keyboard;Lcom/eltechs/axs/KeyCodesX;I)V

    const/16 v2, 0xa3

    aput-object v1, v0, v2

    .line 377
    iget-object v0, p0, Lcom/eltechs/axs/Keyboard;->UnicodeToXKeyMap:[Lcom/eltechs/axs/Keyboard$XKey;

    new-instance v1, Lcom/eltechs/axs/Keyboard$XKey;

    sget-object v2, Lcom/eltechs/axs/KeyCodesX;->KEY_V:Lcom/eltechs/axs/KeyCodesX;

    const/16 v3, 0xa4

    invoke-direct {v1, p0, v2, v3}, Lcom/eltechs/axs/Keyboard$XKey;-><init>(Lcom/eltechs/axs/Keyboard;Lcom/eltechs/axs/KeyCodesX;I)V

    const/16 v2, 0xa4

    aput-object v1, v0, v2

    .line 378
    iget-object v0, p0, Lcom/eltechs/axs/Keyboard;->UnicodeToXKeyMap:[Lcom/eltechs/axs/Keyboard$XKey;

    new-instance v1, Lcom/eltechs/axs/Keyboard$XKey;

    sget-object v2, Lcom/eltechs/axs/KeyCodesX;->KEY_W:Lcom/eltechs/axs/KeyCodesX;

    const/16 v3, 0xa5

    invoke-direct {v1, p0, v2, v3}, Lcom/eltechs/axs/Keyboard$XKey;-><init>(Lcom/eltechs/axs/Keyboard;Lcom/eltechs/axs/KeyCodesX;I)V

    const/16 v2, 0xa5

    aput-object v1, v0, v2

    .line 379
    iget-object v0, p0, Lcom/eltechs/axs/Keyboard;->UnicodeToXKeyMap:[Lcom/eltechs/axs/Keyboard$XKey;

    new-instance v1, Lcom/eltechs/axs/Keyboard$XKey;

    sget-object v2, Lcom/eltechs/axs/KeyCodesX;->KEY_X:Lcom/eltechs/axs/KeyCodesX;

    const/16 v3, 0xa6

    invoke-direct {v1, p0, v2, v3}, Lcom/eltechs/axs/Keyboard$XKey;-><init>(Lcom/eltechs/axs/Keyboard;Lcom/eltechs/axs/KeyCodesX;I)V

    const/16 v2, 0xa6

    aput-object v1, v0, v2

    .line 380
    iget-object v0, p0, Lcom/eltechs/axs/Keyboard;->UnicodeToXKeyMap:[Lcom/eltechs/axs/Keyboard$XKey;

    new-instance v1, Lcom/eltechs/axs/Keyboard$XKey;

    sget-object v2, Lcom/eltechs/axs/KeyCodesX;->KEY_Y:Lcom/eltechs/axs/KeyCodesX;

    const/16 v3, 0xa7

    invoke-direct {v1, p0, v2, v3}, Lcom/eltechs/axs/Keyboard$XKey;-><init>(Lcom/eltechs/axs/Keyboard;Lcom/eltechs/axs/KeyCodesX;I)V

    const/16 v2, 0xa7

    aput-object v1, v0, v2

    .line 381
    iget-object v0, p0, Lcom/eltechs/axs/Keyboard;->UnicodeToXKeyMap:[Lcom/eltechs/axs/Keyboard$XKey;

    new-instance v1, Lcom/eltechs/axs/Keyboard$XKey;

    sget-object v2, Lcom/eltechs/axs/KeyCodesX;->KEY_Z:Lcom/eltechs/axs/KeyCodesX;

    const/16 v3, 0xa8

    invoke-direct {v1, p0, v2, v3}, Lcom/eltechs/axs/Keyboard$XKey;-><init>(Lcom/eltechs/axs/Keyboard;Lcom/eltechs/axs/KeyCodesX;I)V

    const/16 v2, 0xa8

    aput-object v1, v0, v2

    .line 382
    iget-object v0, p0, Lcom/eltechs/axs/Keyboard;->UnicodeToXKeyMap:[Lcom/eltechs/axs/Keyboard$XKey;

    new-instance v1, Lcom/eltechs/axs/Keyboard$XKey;

    sget-object v2, Lcom/eltechs/axs/KeyCodesX;->KEY_A:Lcom/eltechs/axs/KeyCodesX;

    const/16 v3, 0xa9

    invoke-direct {v1, p0, v2, v3}, Lcom/eltechs/axs/Keyboard$XKey;-><init>(Lcom/eltechs/axs/Keyboard;Lcom/eltechs/axs/KeyCodesX;I)V

    const/16 v2, 0xa9

    aput-object v1, v0, v2

    .line 383
    iget-object v0, p0, Lcom/eltechs/axs/Keyboard;->UnicodeToXKeyMap:[Lcom/eltechs/axs/Keyboard$XKey;

    new-instance v1, Lcom/eltechs/axs/Keyboard$XKey;

    sget-object v2, Lcom/eltechs/axs/KeyCodesX;->KEY_B:Lcom/eltechs/axs/KeyCodesX;

    const/16 v3, 0xaa

    invoke-direct {v1, p0, v2, v3}, Lcom/eltechs/axs/Keyboard$XKey;-><init>(Lcom/eltechs/axs/Keyboard;Lcom/eltechs/axs/KeyCodesX;I)V

    const/16 v2, 0xaa

    aput-object v1, v0, v2

    .line 384
    iget-object v0, p0, Lcom/eltechs/axs/Keyboard;->UnicodeToXKeyMap:[Lcom/eltechs/axs/Keyboard$XKey;

    new-instance v1, Lcom/eltechs/axs/Keyboard$XKey;

    sget-object v2, Lcom/eltechs/axs/KeyCodesX;->KEY_C:Lcom/eltechs/axs/KeyCodesX;

    const/16 v3, 0xab

    invoke-direct {v1, p0, v2, v3}, Lcom/eltechs/axs/Keyboard$XKey;-><init>(Lcom/eltechs/axs/Keyboard;Lcom/eltechs/axs/KeyCodesX;I)V

    const/16 v2, 0xab

    aput-object v1, v0, v2

    .line 385
    iget-object v0, p0, Lcom/eltechs/axs/Keyboard;->UnicodeToXKeyMap:[Lcom/eltechs/axs/Keyboard$XKey;

    new-instance v1, Lcom/eltechs/axs/Keyboard$XKey;

    sget-object v2, Lcom/eltechs/axs/KeyCodesX;->KEY_D:Lcom/eltechs/axs/KeyCodesX;

    const/16 v3, 0xac

    invoke-direct {v1, p0, v2, v3}, Lcom/eltechs/axs/Keyboard$XKey;-><init>(Lcom/eltechs/axs/Keyboard;Lcom/eltechs/axs/KeyCodesX;I)V

    const/16 v2, 0xac

    aput-object v1, v0, v2

    .line 386
    iget-object v0, p0, Lcom/eltechs/axs/Keyboard;->UnicodeToXKeyMap:[Lcom/eltechs/axs/Keyboard$XKey;

    new-instance v1, Lcom/eltechs/axs/Keyboard$XKey;

    sget-object v2, Lcom/eltechs/axs/KeyCodesX;->KEY_E:Lcom/eltechs/axs/KeyCodesX;

    const/16 v3, 0xad

    invoke-direct {v1, p0, v2, v3}, Lcom/eltechs/axs/Keyboard$XKey;-><init>(Lcom/eltechs/axs/Keyboard;Lcom/eltechs/axs/KeyCodesX;I)V

    const/16 v2, 0xad

    aput-object v1, v0, v2

    .line 387
    iget-object v0, p0, Lcom/eltechs/axs/Keyboard;->UnicodeToXKeyMap:[Lcom/eltechs/axs/Keyboard$XKey;

    new-instance v1, Lcom/eltechs/axs/Keyboard$XKey;

    sget-object v2, Lcom/eltechs/axs/KeyCodesX;->KEY_F:Lcom/eltechs/axs/KeyCodesX;

    const/16 v3, 0xae

    invoke-direct {v1, p0, v2, v3}, Lcom/eltechs/axs/Keyboard$XKey;-><init>(Lcom/eltechs/axs/Keyboard;Lcom/eltechs/axs/KeyCodesX;I)V

    const/16 v2, 0xae

    aput-object v1, v0, v2

    .line 388
    iget-object v0, p0, Lcom/eltechs/axs/Keyboard;->UnicodeToXKeyMap:[Lcom/eltechs/axs/Keyboard$XKey;

    new-instance v1, Lcom/eltechs/axs/Keyboard$XKey;

    sget-object v2, Lcom/eltechs/axs/KeyCodesX;->KEY_G:Lcom/eltechs/axs/KeyCodesX;

    const/16 v3, 0xaf

    invoke-direct {v1, p0, v2, v3}, Lcom/eltechs/axs/Keyboard$XKey;-><init>(Lcom/eltechs/axs/Keyboard;Lcom/eltechs/axs/KeyCodesX;I)V

    const/16 v2, 0xaf

    aput-object v1, v0, v2

    .line 389
    iget-object v0, p0, Lcom/eltechs/axs/Keyboard;->UnicodeToXKeyMap:[Lcom/eltechs/axs/Keyboard$XKey;

    new-instance v1, Lcom/eltechs/axs/Keyboard$XKey;

    sget-object v2, Lcom/eltechs/axs/KeyCodesX;->KEY_H:Lcom/eltechs/axs/KeyCodesX;

    const/16 v3, 0xb0

    invoke-direct {v1, p0, v2, v3}, Lcom/eltechs/axs/Keyboard$XKey;-><init>(Lcom/eltechs/axs/Keyboard;Lcom/eltechs/axs/KeyCodesX;I)V

    const/16 v2, 0xb0

    aput-object v1, v0, v2

    .line 390
    iget-object v0, p0, Lcom/eltechs/axs/Keyboard;->UnicodeToXKeyMap:[Lcom/eltechs/axs/Keyboard$XKey;

    new-instance v1, Lcom/eltechs/axs/Keyboard$XKey;

    sget-object v2, Lcom/eltechs/axs/KeyCodesX;->KEY_I:Lcom/eltechs/axs/KeyCodesX;

    const/16 v3, 0xb1

    invoke-direct {v1, p0, v2, v3}, Lcom/eltechs/axs/Keyboard$XKey;-><init>(Lcom/eltechs/axs/Keyboard;Lcom/eltechs/axs/KeyCodesX;I)V

    const/16 v2, 0xb1

    aput-object v1, v0, v2

    .line 391
    iget-object v0, p0, Lcom/eltechs/axs/Keyboard;->UnicodeToXKeyMap:[Lcom/eltechs/axs/Keyboard$XKey;

    new-instance v1, Lcom/eltechs/axs/Keyboard$XKey;

    sget-object v2, Lcom/eltechs/axs/KeyCodesX;->KEY_J:Lcom/eltechs/axs/KeyCodesX;

    const/16 v3, 0xb2

    invoke-direct {v1, p0, v2, v3}, Lcom/eltechs/axs/Keyboard$XKey;-><init>(Lcom/eltechs/axs/Keyboard;Lcom/eltechs/axs/KeyCodesX;I)V

    const/16 v2, 0xb2

    aput-object v1, v0, v2

    .line 392
    iget-object v0, p0, Lcom/eltechs/axs/Keyboard;->UnicodeToXKeyMap:[Lcom/eltechs/axs/Keyboard$XKey;

    new-instance v1, Lcom/eltechs/axs/Keyboard$XKey;

    sget-object v2, Lcom/eltechs/axs/KeyCodesX;->KEY_K:Lcom/eltechs/axs/KeyCodesX;

    const/16 v3, 0xb3

    invoke-direct {v1, p0, v2, v3}, Lcom/eltechs/axs/Keyboard$XKey;-><init>(Lcom/eltechs/axs/Keyboard;Lcom/eltechs/axs/KeyCodesX;I)V

    const/16 v2, 0xb3

    aput-object v1, v0, v2

    .line 393
    iget-object v0, p0, Lcom/eltechs/axs/Keyboard;->UnicodeToXKeyMap:[Lcom/eltechs/axs/Keyboard$XKey;

    new-instance v1, Lcom/eltechs/axs/Keyboard$XKey;

    sget-object v2, Lcom/eltechs/axs/KeyCodesX;->KEY_L:Lcom/eltechs/axs/KeyCodesX;

    const/16 v3, 0xb4

    invoke-direct {v1, p0, v2, v3}, Lcom/eltechs/axs/Keyboard$XKey;-><init>(Lcom/eltechs/axs/Keyboard;Lcom/eltechs/axs/KeyCodesX;I)V

    const/16 v2, 0xb4

    aput-object v1, v0, v2

    .line 394
    iget-object v0, p0, Lcom/eltechs/axs/Keyboard;->UnicodeToXKeyMap:[Lcom/eltechs/axs/Keyboard$XKey;

    new-instance v1, Lcom/eltechs/axs/Keyboard$XKey;

    sget-object v2, Lcom/eltechs/axs/KeyCodesX;->KEY_M:Lcom/eltechs/axs/KeyCodesX;

    const/16 v3, 0xb5

    invoke-direct {v1, p0, v2, v3}, Lcom/eltechs/axs/Keyboard$XKey;-><init>(Lcom/eltechs/axs/Keyboard;Lcom/eltechs/axs/KeyCodesX;I)V

    const/16 v2, 0xb5

    aput-object v1, v0, v2

    .line 395
    iget-object v0, p0, Lcom/eltechs/axs/Keyboard;->UnicodeToXKeyMap:[Lcom/eltechs/axs/Keyboard$XKey;

    new-instance v1, Lcom/eltechs/axs/Keyboard$XKey;

    sget-object v2, Lcom/eltechs/axs/KeyCodesX;->KEY_N:Lcom/eltechs/axs/KeyCodesX;

    const/16 v3, 0xb6

    invoke-direct {v1, p0, v2, v3}, Lcom/eltechs/axs/Keyboard$XKey;-><init>(Lcom/eltechs/axs/Keyboard;Lcom/eltechs/axs/KeyCodesX;I)V

    const/16 v2, 0xb6

    aput-object v1, v0, v2

    .line 396
    iget-object v0, p0, Lcom/eltechs/axs/Keyboard;->UnicodeToXKeyMap:[Lcom/eltechs/axs/Keyboard$XKey;

    new-instance v1, Lcom/eltechs/axs/Keyboard$XKey;

    sget-object v2, Lcom/eltechs/axs/KeyCodesX;->KEY_O:Lcom/eltechs/axs/KeyCodesX;

    const/16 v3, 0xb7

    invoke-direct {v1, p0, v2, v3}, Lcom/eltechs/axs/Keyboard$XKey;-><init>(Lcom/eltechs/axs/Keyboard;Lcom/eltechs/axs/KeyCodesX;I)V

    const/16 v2, 0xb7

    aput-object v1, v0, v2

    .line 397
    iget-object v0, p0, Lcom/eltechs/axs/Keyboard;->UnicodeToXKeyMap:[Lcom/eltechs/axs/Keyboard$XKey;

    new-instance v1, Lcom/eltechs/axs/Keyboard$XKey;

    sget-object v2, Lcom/eltechs/axs/KeyCodesX;->KEY_P:Lcom/eltechs/axs/KeyCodesX;

    const/16 v3, 0xb8

    invoke-direct {v1, p0, v2, v3}, Lcom/eltechs/axs/Keyboard$XKey;-><init>(Lcom/eltechs/axs/Keyboard;Lcom/eltechs/axs/KeyCodesX;I)V

    const/16 v2, 0xb8

    aput-object v1, v0, v2

    .line 398
    iget-object v0, p0, Lcom/eltechs/axs/Keyboard;->UnicodeToXKeyMap:[Lcom/eltechs/axs/Keyboard$XKey;

    new-instance v1, Lcom/eltechs/axs/Keyboard$XKey;

    sget-object v2, Lcom/eltechs/axs/KeyCodesX;->KEY_Q:Lcom/eltechs/axs/KeyCodesX;

    const/16 v3, 0xb9

    invoke-direct {v1, p0, v2, v3}, Lcom/eltechs/axs/Keyboard$XKey;-><init>(Lcom/eltechs/axs/Keyboard;Lcom/eltechs/axs/KeyCodesX;I)V

    const/16 v2, 0xb9

    aput-object v1, v0, v2

    .line 399
    iget-object v0, p0, Lcom/eltechs/axs/Keyboard;->UnicodeToXKeyMap:[Lcom/eltechs/axs/Keyboard$XKey;

    new-instance v1, Lcom/eltechs/axs/Keyboard$XKey;

    sget-object v2, Lcom/eltechs/axs/KeyCodesX;->KEY_R:Lcom/eltechs/axs/KeyCodesX;

    const/16 v3, 0xba

    invoke-direct {v1, p0, v2, v3}, Lcom/eltechs/axs/Keyboard$XKey;-><init>(Lcom/eltechs/axs/Keyboard;Lcom/eltechs/axs/KeyCodesX;I)V

    const/16 v2, 0xba

    aput-object v1, v0, v2

    .line 400
    iget-object v0, p0, Lcom/eltechs/axs/Keyboard;->UnicodeToXKeyMap:[Lcom/eltechs/axs/Keyboard$XKey;

    new-instance v1, Lcom/eltechs/axs/Keyboard$XKey;

    sget-object v2, Lcom/eltechs/axs/KeyCodesX;->KEY_S:Lcom/eltechs/axs/KeyCodesX;

    const/16 v3, 0xbb

    invoke-direct {v1, p0, v2, v3}, Lcom/eltechs/axs/Keyboard$XKey;-><init>(Lcom/eltechs/axs/Keyboard;Lcom/eltechs/axs/KeyCodesX;I)V

    const/16 v2, 0xbb

    aput-object v1, v0, v2

    .line 401
    iget-object v0, p0, Lcom/eltechs/axs/Keyboard;->UnicodeToXKeyMap:[Lcom/eltechs/axs/Keyboard$XKey;

    new-instance v1, Lcom/eltechs/axs/Keyboard$XKey;

    sget-object v2, Lcom/eltechs/axs/KeyCodesX;->KEY_T:Lcom/eltechs/axs/KeyCodesX;

    const/16 v3, 0xbc

    invoke-direct {v1, p0, v2, v3}, Lcom/eltechs/axs/Keyboard$XKey;-><init>(Lcom/eltechs/axs/Keyboard;Lcom/eltechs/axs/KeyCodesX;I)V

    const/16 v2, 0xbc

    aput-object v1, v0, v2

    .line 402
    iget-object v0, p0, Lcom/eltechs/axs/Keyboard;->UnicodeToXKeyMap:[Lcom/eltechs/axs/Keyboard$XKey;

    new-instance v1, Lcom/eltechs/axs/Keyboard$XKey;

    sget-object v2, Lcom/eltechs/axs/KeyCodesX;->KEY_U:Lcom/eltechs/axs/KeyCodesX;

    const/16 v3, 0xbd

    invoke-direct {v1, p0, v2, v3}, Lcom/eltechs/axs/Keyboard$XKey;-><init>(Lcom/eltechs/axs/Keyboard;Lcom/eltechs/axs/KeyCodesX;I)V

    const/16 v2, 0xbd

    aput-object v1, v0, v2

    .line 403
    iget-object v0, p0, Lcom/eltechs/axs/Keyboard;->UnicodeToXKeyMap:[Lcom/eltechs/axs/Keyboard$XKey;

    new-instance v1, Lcom/eltechs/axs/Keyboard$XKey;

    sget-object v2, Lcom/eltechs/axs/KeyCodesX;->KEY_V:Lcom/eltechs/axs/KeyCodesX;

    const/16 v3, 0xbe

    invoke-direct {v1, p0, v2, v3}, Lcom/eltechs/axs/Keyboard$XKey;-><init>(Lcom/eltechs/axs/Keyboard;Lcom/eltechs/axs/KeyCodesX;I)V

    const/16 v2, 0xbe

    aput-object v1, v0, v2

    .line 404
    iget-object v0, p0, Lcom/eltechs/axs/Keyboard;->UnicodeToXKeyMap:[Lcom/eltechs/axs/Keyboard$XKey;

    new-instance v1, Lcom/eltechs/axs/Keyboard$XKey;

    sget-object v2, Lcom/eltechs/axs/KeyCodesX;->KEY_W:Lcom/eltechs/axs/KeyCodesX;

    const/16 v3, 0xbf

    invoke-direct {v1, p0, v2, v3}, Lcom/eltechs/axs/Keyboard$XKey;-><init>(Lcom/eltechs/axs/Keyboard;Lcom/eltechs/axs/KeyCodesX;I)V

    const/16 v2, 0xbf

    aput-object v1, v0, v2

    .line 405
    iget-object v0, p0, Lcom/eltechs/axs/Keyboard;->UnicodeToXKeyMap:[Lcom/eltechs/axs/Keyboard$XKey;

    new-instance v1, Lcom/eltechs/axs/Keyboard$XKey;

    sget-object v2, Lcom/eltechs/axs/KeyCodesX;->KEY_X:Lcom/eltechs/axs/KeyCodesX;

    const/16 v3, 0xc0

    invoke-direct {v1, p0, v2, v3}, Lcom/eltechs/axs/Keyboard$XKey;-><init>(Lcom/eltechs/axs/Keyboard;Lcom/eltechs/axs/KeyCodesX;I)V

    const/16 v2, 0xc0

    aput-object v1, v0, v2

    .line 406
    iget-object v0, p0, Lcom/eltechs/axs/Keyboard;->UnicodeToXKeyMap:[Lcom/eltechs/axs/Keyboard$XKey;

    new-instance v1, Lcom/eltechs/axs/Keyboard$XKey;

    sget-object v2, Lcom/eltechs/axs/KeyCodesX;->KEY_Y:Lcom/eltechs/axs/KeyCodesX;

    const/16 v3, 0xc1

    invoke-direct {v1, p0, v2, v3}, Lcom/eltechs/axs/Keyboard$XKey;-><init>(Lcom/eltechs/axs/Keyboard;Lcom/eltechs/axs/KeyCodesX;I)V

    const/16 v2, 0xc1

    aput-object v1, v0, v2

    .line 407
    iget-object v0, p0, Lcom/eltechs/axs/Keyboard;->UnicodeToXKeyMap:[Lcom/eltechs/axs/Keyboard$XKey;

    new-instance v1, Lcom/eltechs/axs/Keyboard$XKey;

    sget-object v2, Lcom/eltechs/axs/KeyCodesX;->KEY_Z:Lcom/eltechs/axs/KeyCodesX;

    const/16 v3, 0xc2

    invoke-direct {v1, p0, v2, v3}, Lcom/eltechs/axs/Keyboard$XKey;-><init>(Lcom/eltechs/axs/Keyboard;Lcom/eltechs/axs/KeyCodesX;I)V

    const/16 v2, 0xc2

    aput-object v1, v0, v2

    .line 408
    iget-object v0, p0, Lcom/eltechs/axs/Keyboard;->UnicodeToXKeyMap:[Lcom/eltechs/axs/Keyboard$XKey;

    new-instance v1, Lcom/eltechs/axs/Keyboard$XKey;

    sget-object v2, Lcom/eltechs/axs/KeyCodesX;->KEY_A:Lcom/eltechs/axs/KeyCodesX;

    const/16 v3, 0xc3

    invoke-direct {v1, p0, v2, v3}, Lcom/eltechs/axs/Keyboard$XKey;-><init>(Lcom/eltechs/axs/Keyboard;Lcom/eltechs/axs/KeyCodesX;I)V

    const/16 v2, 0xc3

    aput-object v1, v0, v2

    .line 409
    iget-object v0, p0, Lcom/eltechs/axs/Keyboard;->UnicodeToXKeyMap:[Lcom/eltechs/axs/Keyboard$XKey;

    new-instance v1, Lcom/eltechs/axs/Keyboard$XKey;

    sget-object v2, Lcom/eltechs/axs/KeyCodesX;->KEY_B:Lcom/eltechs/axs/KeyCodesX;

    const/16 v3, 0xc4

    invoke-direct {v1, p0, v2, v3}, Lcom/eltechs/axs/Keyboard$XKey;-><init>(Lcom/eltechs/axs/Keyboard;Lcom/eltechs/axs/KeyCodesX;I)V

    const/16 v2, 0xc4

    aput-object v1, v0, v2

    .line 410
    iget-object v0, p0, Lcom/eltechs/axs/Keyboard;->UnicodeToXKeyMap:[Lcom/eltechs/axs/Keyboard$XKey;

    new-instance v1, Lcom/eltechs/axs/Keyboard$XKey;

    sget-object v2, Lcom/eltechs/axs/KeyCodesX;->KEY_C:Lcom/eltechs/axs/KeyCodesX;

    const/16 v3, 0xc5

    invoke-direct {v1, p0, v2, v3}, Lcom/eltechs/axs/Keyboard$XKey;-><init>(Lcom/eltechs/axs/Keyboard;Lcom/eltechs/axs/KeyCodesX;I)V

    const/16 v2, 0xc5

    aput-object v1, v0, v2

    .line 411
    iget-object v0, p0, Lcom/eltechs/axs/Keyboard;->UnicodeToXKeyMap:[Lcom/eltechs/axs/Keyboard$XKey;

    new-instance v1, Lcom/eltechs/axs/Keyboard$XKey;

    sget-object v2, Lcom/eltechs/axs/KeyCodesX;->KEY_D:Lcom/eltechs/axs/KeyCodesX;

    const/16 v3, 0xc6

    invoke-direct {v1, p0, v2, v3}, Lcom/eltechs/axs/Keyboard$XKey;-><init>(Lcom/eltechs/axs/Keyboard;Lcom/eltechs/axs/KeyCodesX;I)V

    const/16 v2, 0xc6

    aput-object v1, v0, v2

    .line 412
    iget-object v0, p0, Lcom/eltechs/axs/Keyboard;->UnicodeToXKeyMap:[Lcom/eltechs/axs/Keyboard$XKey;

    new-instance v1, Lcom/eltechs/axs/Keyboard$XKey;

    sget-object v2, Lcom/eltechs/axs/KeyCodesX;->KEY_E:Lcom/eltechs/axs/KeyCodesX;

    const/16 v3, 0xc7

    invoke-direct {v1, p0, v2, v3}, Lcom/eltechs/axs/Keyboard$XKey;-><init>(Lcom/eltechs/axs/Keyboard;Lcom/eltechs/axs/KeyCodesX;I)V

    const/16 v2, 0xc7

    aput-object v1, v0, v2

    .line 413
    iget-object v0, p0, Lcom/eltechs/axs/Keyboard;->UnicodeToXKeyMap:[Lcom/eltechs/axs/Keyboard$XKey;

    new-instance v1, Lcom/eltechs/axs/Keyboard$XKey;

    sget-object v2, Lcom/eltechs/axs/KeyCodesX;->KEY_F:Lcom/eltechs/axs/KeyCodesX;

    const/16 v3, 0xc8

    invoke-direct {v1, p0, v2, v3}, Lcom/eltechs/axs/Keyboard$XKey;-><init>(Lcom/eltechs/axs/Keyboard;Lcom/eltechs/axs/KeyCodesX;I)V

    const/16 v2, 0xc8

    aput-object v1, v0, v2

    .line 414
    iget-object v0, p0, Lcom/eltechs/axs/Keyboard;->UnicodeToXKeyMap:[Lcom/eltechs/axs/Keyboard$XKey;

    new-instance v1, Lcom/eltechs/axs/Keyboard$XKey;

    sget-object v2, Lcom/eltechs/axs/KeyCodesX;->KEY_G:Lcom/eltechs/axs/KeyCodesX;

    const/16 v3, 0xc9

    invoke-direct {v1, p0, v2, v3}, Lcom/eltechs/axs/Keyboard$XKey;-><init>(Lcom/eltechs/axs/Keyboard;Lcom/eltechs/axs/KeyCodesX;I)V

    const/16 v2, 0xc9

    aput-object v1, v0, v2

    .line 415
    iget-object v0, p0, Lcom/eltechs/axs/Keyboard;->UnicodeToXKeyMap:[Lcom/eltechs/axs/Keyboard$XKey;

    new-instance v1, Lcom/eltechs/axs/Keyboard$XKey;

    sget-object v2, Lcom/eltechs/axs/KeyCodesX;->KEY_H:Lcom/eltechs/axs/KeyCodesX;

    const/16 v3, 0xca

    invoke-direct {v1, p0, v2, v3}, Lcom/eltechs/axs/Keyboard$XKey;-><init>(Lcom/eltechs/axs/Keyboard;Lcom/eltechs/axs/KeyCodesX;I)V

    const/16 v2, 0xca

    aput-object v1, v0, v2

    .line 416
    iget-object v0, p0, Lcom/eltechs/axs/Keyboard;->UnicodeToXKeyMap:[Lcom/eltechs/axs/Keyboard$XKey;

    new-instance v1, Lcom/eltechs/axs/Keyboard$XKey;

    sget-object v2, Lcom/eltechs/axs/KeyCodesX;->KEY_I:Lcom/eltechs/axs/KeyCodesX;

    const/16 v3, 0xcb

    invoke-direct {v1, p0, v2, v3}, Lcom/eltechs/axs/Keyboard$XKey;-><init>(Lcom/eltechs/axs/Keyboard;Lcom/eltechs/axs/KeyCodesX;I)V

    const/16 v2, 0xcb

    aput-object v1, v0, v2

    .line 417
    iget-object v0, p0, Lcom/eltechs/axs/Keyboard;->UnicodeToXKeyMap:[Lcom/eltechs/axs/Keyboard$XKey;

    new-instance v1, Lcom/eltechs/axs/Keyboard$XKey;

    sget-object v2, Lcom/eltechs/axs/KeyCodesX;->KEY_J:Lcom/eltechs/axs/KeyCodesX;

    const/16 v3, 0xcc

    invoke-direct {v1, p0, v2, v3}, Lcom/eltechs/axs/Keyboard$XKey;-><init>(Lcom/eltechs/axs/Keyboard;Lcom/eltechs/axs/KeyCodesX;I)V

    const/16 v2, 0xcc

    aput-object v1, v0, v2

    .line 418
    iget-object v0, p0, Lcom/eltechs/axs/Keyboard;->UnicodeToXKeyMap:[Lcom/eltechs/axs/Keyboard$XKey;

    new-instance v1, Lcom/eltechs/axs/Keyboard$XKey;

    sget-object v2, Lcom/eltechs/axs/KeyCodesX;->KEY_K:Lcom/eltechs/axs/KeyCodesX;

    const/16 v3, 0xcd

    invoke-direct {v1, p0, v2, v3}, Lcom/eltechs/axs/Keyboard$XKey;-><init>(Lcom/eltechs/axs/Keyboard;Lcom/eltechs/axs/KeyCodesX;I)V

    const/16 v2, 0xcd

    aput-object v1, v0, v2

    .line 419
    iget-object v0, p0, Lcom/eltechs/axs/Keyboard;->UnicodeToXKeyMap:[Lcom/eltechs/axs/Keyboard$XKey;

    new-instance v1, Lcom/eltechs/axs/Keyboard$XKey;

    sget-object v2, Lcom/eltechs/axs/KeyCodesX;->KEY_L:Lcom/eltechs/axs/KeyCodesX;

    const/16 v3, 0xce

    invoke-direct {v1, p0, v2, v3}, Lcom/eltechs/axs/Keyboard$XKey;-><init>(Lcom/eltechs/axs/Keyboard;Lcom/eltechs/axs/KeyCodesX;I)V

    const/16 v2, 0xce

    aput-object v1, v0, v2

    .line 420
    iget-object v0, p0, Lcom/eltechs/axs/Keyboard;->UnicodeToXKeyMap:[Lcom/eltechs/axs/Keyboard$XKey;

    new-instance v1, Lcom/eltechs/axs/Keyboard$XKey;

    sget-object v2, Lcom/eltechs/axs/KeyCodesX;->KEY_M:Lcom/eltechs/axs/KeyCodesX;

    const/16 v3, 0xcf

    invoke-direct {v1, p0, v2, v3}, Lcom/eltechs/axs/Keyboard$XKey;-><init>(Lcom/eltechs/axs/Keyboard;Lcom/eltechs/axs/KeyCodesX;I)V

    const/16 v2, 0xcf

    aput-object v1, v0, v2

    .line 421
    iget-object v0, p0, Lcom/eltechs/axs/Keyboard;->UnicodeToXKeyMap:[Lcom/eltechs/axs/Keyboard$XKey;

    new-instance v1, Lcom/eltechs/axs/Keyboard$XKey;

    sget-object v2, Lcom/eltechs/axs/KeyCodesX;->KEY_N:Lcom/eltechs/axs/KeyCodesX;

    const/16 v3, 0xd0

    invoke-direct {v1, p0, v2, v3}, Lcom/eltechs/axs/Keyboard$XKey;-><init>(Lcom/eltechs/axs/Keyboard;Lcom/eltechs/axs/KeyCodesX;I)V

    const/16 v2, 0xd0

    aput-object v1, v0, v2

    .line 422
    iget-object v0, p0, Lcom/eltechs/axs/Keyboard;->UnicodeToXKeyMap:[Lcom/eltechs/axs/Keyboard$XKey;

    new-instance v1, Lcom/eltechs/axs/Keyboard$XKey;

    sget-object v2, Lcom/eltechs/axs/KeyCodesX;->KEY_O:Lcom/eltechs/axs/KeyCodesX;

    const/16 v3, 0xd1

    invoke-direct {v1, p0, v2, v3}, Lcom/eltechs/axs/Keyboard$XKey;-><init>(Lcom/eltechs/axs/Keyboard;Lcom/eltechs/axs/KeyCodesX;I)V

    const/16 v2, 0xd1

    aput-object v1, v0, v2

    .line 423
    iget-object v0, p0, Lcom/eltechs/axs/Keyboard;->UnicodeToXKeyMap:[Lcom/eltechs/axs/Keyboard$XKey;

    new-instance v1, Lcom/eltechs/axs/Keyboard$XKey;

    sget-object v2, Lcom/eltechs/axs/KeyCodesX;->KEY_P:Lcom/eltechs/axs/KeyCodesX;

    const/16 v3, 0xd2

    invoke-direct {v1, p0, v2, v3}, Lcom/eltechs/axs/Keyboard$XKey;-><init>(Lcom/eltechs/axs/Keyboard;Lcom/eltechs/axs/KeyCodesX;I)V

    const/16 v2, 0xd2

    aput-object v1, v0, v2

    .line 424
    iget-object v0, p0, Lcom/eltechs/axs/Keyboard;->UnicodeToXKeyMap:[Lcom/eltechs/axs/Keyboard$XKey;

    new-instance v1, Lcom/eltechs/axs/Keyboard$XKey;

    sget-object v2, Lcom/eltechs/axs/KeyCodesX;->KEY_Q:Lcom/eltechs/axs/KeyCodesX;

    const/16 v3, 0xd3

    invoke-direct {v1, p0, v2, v3}, Lcom/eltechs/axs/Keyboard$XKey;-><init>(Lcom/eltechs/axs/Keyboard;Lcom/eltechs/axs/KeyCodesX;I)V

    const/16 v2, 0xd3

    aput-object v1, v0, v2

    .line 425
    iget-object v0, p0, Lcom/eltechs/axs/Keyboard;->UnicodeToXKeyMap:[Lcom/eltechs/axs/Keyboard$XKey;

    new-instance v1, Lcom/eltechs/axs/Keyboard$XKey;

    sget-object v2, Lcom/eltechs/axs/KeyCodesX;->KEY_R:Lcom/eltechs/axs/KeyCodesX;

    const/16 v3, 0xd4

    invoke-direct {v1, p0, v2, v3}, Lcom/eltechs/axs/Keyboard$XKey;-><init>(Lcom/eltechs/axs/Keyboard;Lcom/eltechs/axs/KeyCodesX;I)V

    const/16 v2, 0xd4

    aput-object v1, v0, v2

    .line 426
    iget-object v0, p0, Lcom/eltechs/axs/Keyboard;->UnicodeToXKeyMap:[Lcom/eltechs/axs/Keyboard$XKey;

    new-instance v1, Lcom/eltechs/axs/Keyboard$XKey;

    sget-object v2, Lcom/eltechs/axs/KeyCodesX;->KEY_S:Lcom/eltechs/axs/KeyCodesX;

    const/16 v3, 0xd5

    invoke-direct {v1, p0, v2, v3}, Lcom/eltechs/axs/Keyboard$XKey;-><init>(Lcom/eltechs/axs/Keyboard;Lcom/eltechs/axs/KeyCodesX;I)V

    const/16 v2, 0xd5

    aput-object v1, v0, v2

    .line 427
    iget-object v0, p0, Lcom/eltechs/axs/Keyboard;->UnicodeToXKeyMap:[Lcom/eltechs/axs/Keyboard$XKey;

    new-instance v1, Lcom/eltechs/axs/Keyboard$XKey;

    sget-object v2, Lcom/eltechs/axs/KeyCodesX;->KEY_T:Lcom/eltechs/axs/KeyCodesX;

    const/16 v3, 0xd6

    invoke-direct {v1, p0, v2, v3}, Lcom/eltechs/axs/Keyboard$XKey;-><init>(Lcom/eltechs/axs/Keyboard;Lcom/eltechs/axs/KeyCodesX;I)V

    const/16 v2, 0xd6

    aput-object v1, v0, v2

    .line 428
    iget-object v0, p0, Lcom/eltechs/axs/Keyboard;->UnicodeToXKeyMap:[Lcom/eltechs/axs/Keyboard$XKey;

    new-instance v1, Lcom/eltechs/axs/Keyboard$XKey;

    sget-object v2, Lcom/eltechs/axs/KeyCodesX;->KEY_U:Lcom/eltechs/axs/KeyCodesX;

    const/16 v3, 0xd7

    invoke-direct {v1, p0, v2, v3}, Lcom/eltechs/axs/Keyboard$XKey;-><init>(Lcom/eltechs/axs/Keyboard;Lcom/eltechs/axs/KeyCodesX;I)V

    const/16 v2, 0xd7

    aput-object v1, v0, v2

    .line 429
    iget-object v0, p0, Lcom/eltechs/axs/Keyboard;->UnicodeToXKeyMap:[Lcom/eltechs/axs/Keyboard$XKey;

    new-instance v1, Lcom/eltechs/axs/Keyboard$XKey;

    sget-object v2, Lcom/eltechs/axs/KeyCodesX;->KEY_V:Lcom/eltechs/axs/KeyCodesX;

    const/16 v3, 0xd8

    invoke-direct {v1, p0, v2, v3}, Lcom/eltechs/axs/Keyboard$XKey;-><init>(Lcom/eltechs/axs/Keyboard;Lcom/eltechs/axs/KeyCodesX;I)V

    const/16 v2, 0xd8

    aput-object v1, v0, v2

    .line 430
    iget-object v0, p0, Lcom/eltechs/axs/Keyboard;->UnicodeToXKeyMap:[Lcom/eltechs/axs/Keyboard$XKey;

    new-instance v1, Lcom/eltechs/axs/Keyboard$XKey;

    sget-object v2, Lcom/eltechs/axs/KeyCodesX;->KEY_W:Lcom/eltechs/axs/KeyCodesX;

    const/16 v3, 0xd9

    invoke-direct {v1, p0, v2, v3}, Lcom/eltechs/axs/Keyboard$XKey;-><init>(Lcom/eltechs/axs/Keyboard;Lcom/eltechs/axs/KeyCodesX;I)V

    const/16 v2, 0xd9

    aput-object v1, v0, v2

    .line 431
    iget-object v0, p0, Lcom/eltechs/axs/Keyboard;->UnicodeToXKeyMap:[Lcom/eltechs/axs/Keyboard$XKey;

    new-instance v1, Lcom/eltechs/axs/Keyboard$XKey;

    sget-object v2, Lcom/eltechs/axs/KeyCodesX;->KEY_X:Lcom/eltechs/axs/KeyCodesX;

    const/16 v3, 0xda

    invoke-direct {v1, p0, v2, v3}, Lcom/eltechs/axs/Keyboard$XKey;-><init>(Lcom/eltechs/axs/Keyboard;Lcom/eltechs/axs/KeyCodesX;I)V

    const/16 v2, 0xda

    aput-object v1, v0, v2

    .line 432
    iget-object v0, p0, Lcom/eltechs/axs/Keyboard;->UnicodeToXKeyMap:[Lcom/eltechs/axs/Keyboard$XKey;

    new-instance v1, Lcom/eltechs/axs/Keyboard$XKey;

    sget-object v2, Lcom/eltechs/axs/KeyCodesX;->KEY_Y:Lcom/eltechs/axs/KeyCodesX;

    const/16 v3, 0xdb

    invoke-direct {v1, p0, v2, v3}, Lcom/eltechs/axs/Keyboard$XKey;-><init>(Lcom/eltechs/axs/Keyboard;Lcom/eltechs/axs/KeyCodesX;I)V

    const/16 v2, 0xdb

    aput-object v1, v0, v2

    .line 433
    iget-object v0, p0, Lcom/eltechs/axs/Keyboard;->UnicodeToXKeyMap:[Lcom/eltechs/axs/Keyboard$XKey;

    new-instance v1, Lcom/eltechs/axs/Keyboard$XKey;

    sget-object v2, Lcom/eltechs/axs/KeyCodesX;->KEY_Z:Lcom/eltechs/axs/KeyCodesX;

    const/16 v3, 0xdc

    invoke-direct {v1, p0, v2, v3}, Lcom/eltechs/axs/Keyboard$XKey;-><init>(Lcom/eltechs/axs/Keyboard;Lcom/eltechs/axs/KeyCodesX;I)V

    const/16 v2, 0xdc

    aput-object v1, v0, v2

    .line 434
    iget-object v0, p0, Lcom/eltechs/axs/Keyboard;->UnicodeToXKeyMap:[Lcom/eltechs/axs/Keyboard$XKey;

    new-instance v1, Lcom/eltechs/axs/Keyboard$XKey;

    sget-object v2, Lcom/eltechs/axs/KeyCodesX;->KEY_A:Lcom/eltechs/axs/KeyCodesX;

    const/16 v3, 0xdd

    invoke-direct {v1, p0, v2, v3}, Lcom/eltechs/axs/Keyboard$XKey;-><init>(Lcom/eltechs/axs/Keyboard;Lcom/eltechs/axs/KeyCodesX;I)V

    const/16 v2, 0xdd

    aput-object v1, v0, v2

    .line 435
    iget-object v0, p0, Lcom/eltechs/axs/Keyboard;->UnicodeToXKeyMap:[Lcom/eltechs/axs/Keyboard$XKey;

    new-instance v1, Lcom/eltechs/axs/Keyboard$XKey;

    sget-object v2, Lcom/eltechs/axs/KeyCodesX;->KEY_B:Lcom/eltechs/axs/KeyCodesX;

    const/16 v3, 0xde

    invoke-direct {v1, p0, v2, v3}, Lcom/eltechs/axs/Keyboard$XKey;-><init>(Lcom/eltechs/axs/Keyboard;Lcom/eltechs/axs/KeyCodesX;I)V

    const/16 v2, 0xde

    aput-object v1, v0, v2

    .line 436
    iget-object v0, p0, Lcom/eltechs/axs/Keyboard;->UnicodeToXKeyMap:[Lcom/eltechs/axs/Keyboard$XKey;

    new-instance v1, Lcom/eltechs/axs/Keyboard$XKey;

    sget-object v2, Lcom/eltechs/axs/KeyCodesX;->KEY_C:Lcom/eltechs/axs/KeyCodesX;

    const/16 v3, 0xdf

    invoke-direct {v1, p0, v2, v3}, Lcom/eltechs/axs/Keyboard$XKey;-><init>(Lcom/eltechs/axs/Keyboard;Lcom/eltechs/axs/KeyCodesX;I)V

    const/16 v2, 0xdf

    aput-object v1, v0, v2

    .line 437
    iget-object v0, p0, Lcom/eltechs/axs/Keyboard;->UnicodeToXKeyMap:[Lcom/eltechs/axs/Keyboard$XKey;

    new-instance v1, Lcom/eltechs/axs/Keyboard$XKey;

    sget-object v2, Lcom/eltechs/axs/KeyCodesX;->KEY_D:Lcom/eltechs/axs/KeyCodesX;

    const/16 v3, 0xe0

    invoke-direct {v1, p0, v2, v3}, Lcom/eltechs/axs/Keyboard$XKey;-><init>(Lcom/eltechs/axs/Keyboard;Lcom/eltechs/axs/KeyCodesX;I)V

    const/16 v2, 0xe0

    aput-object v1, v0, v2

    .line 438
    iget-object v0, p0, Lcom/eltechs/axs/Keyboard;->UnicodeToXKeyMap:[Lcom/eltechs/axs/Keyboard$XKey;

    new-instance v1, Lcom/eltechs/axs/Keyboard$XKey;

    sget-object v2, Lcom/eltechs/axs/KeyCodesX;->KEY_E:Lcom/eltechs/axs/KeyCodesX;

    const/16 v3, 0xe1

    invoke-direct {v1, p0, v2, v3}, Lcom/eltechs/axs/Keyboard$XKey;-><init>(Lcom/eltechs/axs/Keyboard;Lcom/eltechs/axs/KeyCodesX;I)V

    const/16 v2, 0xe1

    aput-object v1, v0, v2

    .line 439
    iget-object v0, p0, Lcom/eltechs/axs/Keyboard;->UnicodeToXKeyMap:[Lcom/eltechs/axs/Keyboard$XKey;

    new-instance v1, Lcom/eltechs/axs/Keyboard$XKey;

    sget-object v2, Lcom/eltechs/axs/KeyCodesX;->KEY_F:Lcom/eltechs/axs/KeyCodesX;

    const/16 v3, 0xe2

    invoke-direct {v1, p0, v2, v3}, Lcom/eltechs/axs/Keyboard$XKey;-><init>(Lcom/eltechs/axs/Keyboard;Lcom/eltechs/axs/KeyCodesX;I)V

    const/16 v2, 0xe2

    aput-object v1, v0, v2

    .line 440
    iget-object v0, p0, Lcom/eltechs/axs/Keyboard;->UnicodeToXKeyMap:[Lcom/eltechs/axs/Keyboard$XKey;

    new-instance v1, Lcom/eltechs/axs/Keyboard$XKey;

    sget-object v2, Lcom/eltechs/axs/KeyCodesX;->KEY_G:Lcom/eltechs/axs/KeyCodesX;

    const/16 v3, 0xe3

    invoke-direct {v1, p0, v2, v3}, Lcom/eltechs/axs/Keyboard$XKey;-><init>(Lcom/eltechs/axs/Keyboard;Lcom/eltechs/axs/KeyCodesX;I)V

    const/16 v2, 0xe3

    aput-object v1, v0, v2

    .line 441
    iget-object v0, p0, Lcom/eltechs/axs/Keyboard;->UnicodeToXKeyMap:[Lcom/eltechs/axs/Keyboard$XKey;

    new-instance v1, Lcom/eltechs/axs/Keyboard$XKey;

    sget-object v2, Lcom/eltechs/axs/KeyCodesX;->KEY_H:Lcom/eltechs/axs/KeyCodesX;

    const/16 v3, 0xe4

    invoke-direct {v1, p0, v2, v3}, Lcom/eltechs/axs/Keyboard$XKey;-><init>(Lcom/eltechs/axs/Keyboard;Lcom/eltechs/axs/KeyCodesX;I)V

    const/16 v2, 0xe4

    aput-object v1, v0, v2

    .line 442
    iget-object v0, p0, Lcom/eltechs/axs/Keyboard;->UnicodeToXKeyMap:[Lcom/eltechs/axs/Keyboard$XKey;

    new-instance v1, Lcom/eltechs/axs/Keyboard$XKey;

    sget-object v2, Lcom/eltechs/axs/KeyCodesX;->KEY_I:Lcom/eltechs/axs/KeyCodesX;

    const/16 v3, 0xe5

    invoke-direct {v1, p0, v2, v3}, Lcom/eltechs/axs/Keyboard$XKey;-><init>(Lcom/eltechs/axs/Keyboard;Lcom/eltechs/axs/KeyCodesX;I)V

    const/16 v2, 0xe5

    aput-object v1, v0, v2

    .line 443
    iget-object v0, p0, Lcom/eltechs/axs/Keyboard;->UnicodeToXKeyMap:[Lcom/eltechs/axs/Keyboard$XKey;

    new-instance v1, Lcom/eltechs/axs/Keyboard$XKey;

    sget-object v2, Lcom/eltechs/axs/KeyCodesX;->KEY_J:Lcom/eltechs/axs/KeyCodesX;

    const/16 v3, 0xe6

    invoke-direct {v1, p0, v2, v3}, Lcom/eltechs/axs/Keyboard$XKey;-><init>(Lcom/eltechs/axs/Keyboard;Lcom/eltechs/axs/KeyCodesX;I)V

    const/16 v2, 0xe6

    aput-object v1, v0, v2

    .line 444
    iget-object v0, p0, Lcom/eltechs/axs/Keyboard;->UnicodeToXKeyMap:[Lcom/eltechs/axs/Keyboard$XKey;

    new-instance v1, Lcom/eltechs/axs/Keyboard$XKey;

    sget-object v2, Lcom/eltechs/axs/KeyCodesX;->KEY_K:Lcom/eltechs/axs/KeyCodesX;

    const/16 v3, 0xe7

    invoke-direct {v1, p0, v2, v3}, Lcom/eltechs/axs/Keyboard$XKey;-><init>(Lcom/eltechs/axs/Keyboard;Lcom/eltechs/axs/KeyCodesX;I)V

    const/16 v2, 0xe7

    aput-object v1, v0, v2

    .line 445
    iget-object v0, p0, Lcom/eltechs/axs/Keyboard;->UnicodeToXKeyMap:[Lcom/eltechs/axs/Keyboard$XKey;

    new-instance v1, Lcom/eltechs/axs/Keyboard$XKey;

    sget-object v2, Lcom/eltechs/axs/KeyCodesX;->KEY_L:Lcom/eltechs/axs/KeyCodesX;

    const/16 v3, 0xe8

    invoke-direct {v1, p0, v2, v3}, Lcom/eltechs/axs/Keyboard$XKey;-><init>(Lcom/eltechs/axs/Keyboard;Lcom/eltechs/axs/KeyCodesX;I)V

    const/16 v2, 0xe8

    aput-object v1, v0, v2

    .line 446
    iget-object v0, p0, Lcom/eltechs/axs/Keyboard;->UnicodeToXKeyMap:[Lcom/eltechs/axs/Keyboard$XKey;

    new-instance v1, Lcom/eltechs/axs/Keyboard$XKey;

    sget-object v2, Lcom/eltechs/axs/KeyCodesX;->KEY_M:Lcom/eltechs/axs/KeyCodesX;

    const/16 v3, 0xe9

    invoke-direct {v1, p0, v2, v3}, Lcom/eltechs/axs/Keyboard$XKey;-><init>(Lcom/eltechs/axs/Keyboard;Lcom/eltechs/axs/KeyCodesX;I)V

    const/16 v2, 0xe9

    aput-object v1, v0, v2

    .line 447
    iget-object v0, p0, Lcom/eltechs/axs/Keyboard;->UnicodeToXKeyMap:[Lcom/eltechs/axs/Keyboard$XKey;

    new-instance v1, Lcom/eltechs/axs/Keyboard$XKey;

    sget-object v2, Lcom/eltechs/axs/KeyCodesX;->KEY_N:Lcom/eltechs/axs/KeyCodesX;

    const/16 v3, 0xea

    invoke-direct {v1, p0, v2, v3}, Lcom/eltechs/axs/Keyboard$XKey;-><init>(Lcom/eltechs/axs/Keyboard;Lcom/eltechs/axs/KeyCodesX;I)V

    const/16 v2, 0xea

    aput-object v1, v0, v2

    .line 448
    iget-object v0, p0, Lcom/eltechs/axs/Keyboard;->UnicodeToXKeyMap:[Lcom/eltechs/axs/Keyboard$XKey;

    new-instance v1, Lcom/eltechs/axs/Keyboard$XKey;

    sget-object v2, Lcom/eltechs/axs/KeyCodesX;->KEY_O:Lcom/eltechs/axs/KeyCodesX;

    const/16 v3, 0xeb

    invoke-direct {v1, p0, v2, v3}, Lcom/eltechs/axs/Keyboard$XKey;-><init>(Lcom/eltechs/axs/Keyboard;Lcom/eltechs/axs/KeyCodesX;I)V

    const/16 v2, 0xeb

    aput-object v1, v0, v2

    .line 449
    iget-object v0, p0, Lcom/eltechs/axs/Keyboard;->UnicodeToXKeyMap:[Lcom/eltechs/axs/Keyboard$XKey;

    new-instance v1, Lcom/eltechs/axs/Keyboard$XKey;

    sget-object v2, Lcom/eltechs/axs/KeyCodesX;->KEY_P:Lcom/eltechs/axs/KeyCodesX;

    const/16 v3, 0xec

    invoke-direct {v1, p0, v2, v3}, Lcom/eltechs/axs/Keyboard$XKey;-><init>(Lcom/eltechs/axs/Keyboard;Lcom/eltechs/axs/KeyCodesX;I)V

    const/16 v2, 0xec

    aput-object v1, v0, v2

    .line 450
    iget-object v0, p0, Lcom/eltechs/axs/Keyboard;->UnicodeToXKeyMap:[Lcom/eltechs/axs/Keyboard$XKey;

    new-instance v1, Lcom/eltechs/axs/Keyboard$XKey;

    sget-object v2, Lcom/eltechs/axs/KeyCodesX;->KEY_Q:Lcom/eltechs/axs/KeyCodesX;

    const/16 v3, 0xed

    invoke-direct {v1, p0, v2, v3}, Lcom/eltechs/axs/Keyboard$XKey;-><init>(Lcom/eltechs/axs/Keyboard;Lcom/eltechs/axs/KeyCodesX;I)V

    const/16 v2, 0xed

    aput-object v1, v0, v2

    .line 451
    iget-object v0, p0, Lcom/eltechs/axs/Keyboard;->UnicodeToXKeyMap:[Lcom/eltechs/axs/Keyboard$XKey;

    new-instance v1, Lcom/eltechs/axs/Keyboard$XKey;

    sget-object v2, Lcom/eltechs/axs/KeyCodesX;->KEY_R:Lcom/eltechs/axs/KeyCodesX;

    const/16 v3, 0xee

    invoke-direct {v1, p0, v2, v3}, Lcom/eltechs/axs/Keyboard$XKey;-><init>(Lcom/eltechs/axs/Keyboard;Lcom/eltechs/axs/KeyCodesX;I)V

    const/16 v2, 0xee

    aput-object v1, v0, v2

    .line 452
    iget-object v0, p0, Lcom/eltechs/axs/Keyboard;->UnicodeToXKeyMap:[Lcom/eltechs/axs/Keyboard$XKey;

    new-instance v1, Lcom/eltechs/axs/Keyboard$XKey;

    sget-object v2, Lcom/eltechs/axs/KeyCodesX;->KEY_S:Lcom/eltechs/axs/KeyCodesX;

    const/16 v3, 0xef

    invoke-direct {v1, p0, v2, v3}, Lcom/eltechs/axs/Keyboard$XKey;-><init>(Lcom/eltechs/axs/Keyboard;Lcom/eltechs/axs/KeyCodesX;I)V

    const/16 v2, 0xef

    aput-object v1, v0, v2

    .line 453
    iget-object v0, p0, Lcom/eltechs/axs/Keyboard;->UnicodeToXKeyMap:[Lcom/eltechs/axs/Keyboard$XKey;

    new-instance v1, Lcom/eltechs/axs/Keyboard$XKey;

    sget-object v2, Lcom/eltechs/axs/KeyCodesX;->KEY_T:Lcom/eltechs/axs/KeyCodesX;

    const/16 v3, 0xf0

    invoke-direct {v1, p0, v2, v3}, Lcom/eltechs/axs/Keyboard$XKey;-><init>(Lcom/eltechs/axs/Keyboard;Lcom/eltechs/axs/KeyCodesX;I)V

    const/16 v2, 0xf0

    aput-object v1, v0, v2

    .line 454
    iget-object v0, p0, Lcom/eltechs/axs/Keyboard;->UnicodeToXKeyMap:[Lcom/eltechs/axs/Keyboard$XKey;

    new-instance v1, Lcom/eltechs/axs/Keyboard$XKey;

    sget-object v2, Lcom/eltechs/axs/KeyCodesX;->KEY_U:Lcom/eltechs/axs/KeyCodesX;

    const/16 v3, 0xf1

    invoke-direct {v1, p0, v2, v3}, Lcom/eltechs/axs/Keyboard$XKey;-><init>(Lcom/eltechs/axs/Keyboard;Lcom/eltechs/axs/KeyCodesX;I)V

    const/16 v2, 0xf1

    aput-object v1, v0, v2

    .line 455
    iget-object v0, p0, Lcom/eltechs/axs/Keyboard;->UnicodeToXKeyMap:[Lcom/eltechs/axs/Keyboard$XKey;

    new-instance v1, Lcom/eltechs/axs/Keyboard$XKey;

    sget-object v2, Lcom/eltechs/axs/KeyCodesX;->KEY_V:Lcom/eltechs/axs/KeyCodesX;

    const/16 v3, 0xf2

    invoke-direct {v1, p0, v2, v3}, Lcom/eltechs/axs/Keyboard$XKey;-><init>(Lcom/eltechs/axs/Keyboard;Lcom/eltechs/axs/KeyCodesX;I)V

    const/16 v2, 0xf2

    aput-object v1, v0, v2

    .line 456
    iget-object v0, p0, Lcom/eltechs/axs/Keyboard;->UnicodeToXKeyMap:[Lcom/eltechs/axs/Keyboard$XKey;

    new-instance v1, Lcom/eltechs/axs/Keyboard$XKey;

    sget-object v2, Lcom/eltechs/axs/KeyCodesX;->KEY_W:Lcom/eltechs/axs/KeyCodesX;

    const/16 v3, 0xf3

    invoke-direct {v1, p0, v2, v3}, Lcom/eltechs/axs/Keyboard$XKey;-><init>(Lcom/eltechs/axs/Keyboard;Lcom/eltechs/axs/KeyCodesX;I)V

    const/16 v2, 0xf3

    aput-object v1, v0, v2

    .line 457
    iget-object v0, p0, Lcom/eltechs/axs/Keyboard;->UnicodeToXKeyMap:[Lcom/eltechs/axs/Keyboard$XKey;

    new-instance v1, Lcom/eltechs/axs/Keyboard$XKey;

    sget-object v2, Lcom/eltechs/axs/KeyCodesX;->KEY_X:Lcom/eltechs/axs/KeyCodesX;

    const/16 v3, 0xf4

    invoke-direct {v1, p0, v2, v3}, Lcom/eltechs/axs/Keyboard$XKey;-><init>(Lcom/eltechs/axs/Keyboard;Lcom/eltechs/axs/KeyCodesX;I)V

    const/16 v2, 0xf4

    aput-object v1, v0, v2

    .line 458
    iget-object v0, p0, Lcom/eltechs/axs/Keyboard;->UnicodeToXKeyMap:[Lcom/eltechs/axs/Keyboard$XKey;

    new-instance v1, Lcom/eltechs/axs/Keyboard$XKey;

    sget-object v2, Lcom/eltechs/axs/KeyCodesX;->KEY_Y:Lcom/eltechs/axs/KeyCodesX;

    const/16 v3, 0xf5

    invoke-direct {v1, p0, v2, v3}, Lcom/eltechs/axs/Keyboard$XKey;-><init>(Lcom/eltechs/axs/Keyboard;Lcom/eltechs/axs/KeyCodesX;I)V

    const/16 v2, 0xf5

    aput-object v1, v0, v2

    .line 459
    iget-object v0, p0, Lcom/eltechs/axs/Keyboard;->UnicodeToXKeyMap:[Lcom/eltechs/axs/Keyboard$XKey;

    new-instance v1, Lcom/eltechs/axs/Keyboard$XKey;

    sget-object v2, Lcom/eltechs/axs/KeyCodesX;->KEY_Z:Lcom/eltechs/axs/KeyCodesX;

    const/16 v3, 0xf6

    invoke-direct {v1, p0, v2, v3}, Lcom/eltechs/axs/Keyboard$XKey;-><init>(Lcom/eltechs/axs/Keyboard;Lcom/eltechs/axs/KeyCodesX;I)V

    const/16 v2, 0xf6

    aput-object v1, v0, v2

    .line 460
    iget-object v0, p0, Lcom/eltechs/axs/Keyboard;->UnicodeToXKeyMap:[Lcom/eltechs/axs/Keyboard$XKey;

    new-instance v1, Lcom/eltechs/axs/Keyboard$XKey;

    sget-object v2, Lcom/eltechs/axs/KeyCodesX;->KEY_A:Lcom/eltechs/axs/KeyCodesX;

    const/16 v3, 0xf7

    invoke-direct {v1, p0, v2, v3}, Lcom/eltechs/axs/Keyboard$XKey;-><init>(Lcom/eltechs/axs/Keyboard;Lcom/eltechs/axs/KeyCodesX;I)V

    const/16 v2, 0xf7

    aput-object v1, v0, v2

    .line 461
    iget-object v0, p0, Lcom/eltechs/axs/Keyboard;->UnicodeToXKeyMap:[Lcom/eltechs/axs/Keyboard$XKey;

    new-instance v1, Lcom/eltechs/axs/Keyboard$XKey;

    sget-object v2, Lcom/eltechs/axs/KeyCodesX;->KEY_B:Lcom/eltechs/axs/KeyCodesX;

    const/16 v3, 0xf8

    invoke-direct {v1, p0, v2, v3}, Lcom/eltechs/axs/Keyboard$XKey;-><init>(Lcom/eltechs/axs/Keyboard;Lcom/eltechs/axs/KeyCodesX;I)V

    const/16 v2, 0xf8

    aput-object v1, v0, v2

    .line 462
    iget-object v0, p0, Lcom/eltechs/axs/Keyboard;->UnicodeToXKeyMap:[Lcom/eltechs/axs/Keyboard$XKey;

    new-instance v1, Lcom/eltechs/axs/Keyboard$XKey;

    sget-object v2, Lcom/eltechs/axs/KeyCodesX;->KEY_C:Lcom/eltechs/axs/KeyCodesX;

    const/16 v3, 0xf9

    invoke-direct {v1, p0, v2, v3}, Lcom/eltechs/axs/Keyboard$XKey;-><init>(Lcom/eltechs/axs/Keyboard;Lcom/eltechs/axs/KeyCodesX;I)V

    const/16 v2, 0xf9

    aput-object v1, v0, v2

    .line 463
    iget-object v0, p0, Lcom/eltechs/axs/Keyboard;->UnicodeToXKeyMap:[Lcom/eltechs/axs/Keyboard$XKey;

    new-instance v1, Lcom/eltechs/axs/Keyboard$XKey;

    sget-object v2, Lcom/eltechs/axs/KeyCodesX;->KEY_D:Lcom/eltechs/axs/KeyCodesX;

    const/16 v3, 0xfa

    invoke-direct {v1, p0, v2, v3}, Lcom/eltechs/axs/Keyboard$XKey;-><init>(Lcom/eltechs/axs/Keyboard;Lcom/eltechs/axs/KeyCodesX;I)V

    const/16 v2, 0xfa

    aput-object v1, v0, v2

    .line 464
    iget-object v0, p0, Lcom/eltechs/axs/Keyboard;->UnicodeToXKeyMap:[Lcom/eltechs/axs/Keyboard$XKey;

    new-instance v1, Lcom/eltechs/axs/Keyboard$XKey;

    sget-object v2, Lcom/eltechs/axs/KeyCodesX;->KEY_E:Lcom/eltechs/axs/KeyCodesX;

    const/16 v3, 0xfb

    invoke-direct {v1, p0, v2, v3}, Lcom/eltechs/axs/Keyboard$XKey;-><init>(Lcom/eltechs/axs/Keyboard;Lcom/eltechs/axs/KeyCodesX;I)V

    const/16 v2, 0xfb

    aput-object v1, v0, v2

    .line 465
    iget-object v0, p0, Lcom/eltechs/axs/Keyboard;->UnicodeToXKeyMap:[Lcom/eltechs/axs/Keyboard$XKey;

    new-instance v1, Lcom/eltechs/axs/Keyboard$XKey;

    sget-object v2, Lcom/eltechs/axs/KeyCodesX;->KEY_F:Lcom/eltechs/axs/KeyCodesX;

    const/16 v3, 0xfc

    invoke-direct {v1, p0, v2, v3}, Lcom/eltechs/axs/Keyboard$XKey;-><init>(Lcom/eltechs/axs/Keyboard;Lcom/eltechs/axs/KeyCodesX;I)V

    const/16 v2, 0xfc

    aput-object v1, v0, v2

    .line 466
    iget-object v0, p0, Lcom/eltechs/axs/Keyboard;->UnicodeToXKeyMap:[Lcom/eltechs/axs/Keyboard$XKey;

    new-instance v1, Lcom/eltechs/axs/Keyboard$XKey;

    sget-object v2, Lcom/eltechs/axs/KeyCodesX;->KEY_G:Lcom/eltechs/axs/KeyCodesX;

    const/16 v3, 0xfd

    invoke-direct {v1, p0, v2, v3}, Lcom/eltechs/axs/Keyboard$XKey;-><init>(Lcom/eltechs/axs/Keyboard;Lcom/eltechs/axs/KeyCodesX;I)V

    const/16 v2, 0xfd

    aput-object v1, v0, v2

    .line 467
    iget-object v0, p0, Lcom/eltechs/axs/Keyboard;->UnicodeToXKeyMap:[Lcom/eltechs/axs/Keyboard$XKey;

    new-instance v1, Lcom/eltechs/axs/Keyboard$XKey;

    sget-object v2, Lcom/eltechs/axs/KeyCodesX;->KEY_H:Lcom/eltechs/axs/KeyCodesX;

    const/16 v3, 0xfe

    invoke-direct {v1, p0, v2, v3}, Lcom/eltechs/axs/Keyboard$XKey;-><init>(Lcom/eltechs/axs/Keyboard;Lcom/eltechs/axs/KeyCodesX;I)V

    const/16 v2, 0xfe

    aput-object v1, v0, v2

    .line 468
    iget-object v0, p0, Lcom/eltechs/axs/Keyboard;->UnicodeToXKeyMap:[Lcom/eltechs/axs/Keyboard$XKey;

    new-instance v1, Lcom/eltechs/axs/Keyboard$XKey;

    sget-object v2, Lcom/eltechs/axs/KeyCodesX;->KEY_I:Lcom/eltechs/axs/KeyCodesX;

    const/16 v3, 0xff

    invoke-direct {v1, p0, v2, v3}, Lcom/eltechs/axs/Keyboard$XKey;-><init>(Lcom/eltechs/axs/Keyboard;Lcom/eltechs/axs/KeyCodesX;I)V

    const/16 v2, 0xff

    aput-object v1, v0, v2

    .line 469
    iget-object v0, p0, Lcom/eltechs/axs/Keyboard;->UnicodeToXKeyMap:[Lcom/eltechs/axs/Keyboard$XKey;

    new-instance v1, Lcom/eltechs/axs/Keyboard$XKey;

    sget-object v2, Lcom/eltechs/axs/KeyCodesX;->KEY_J:Lcom/eltechs/axs/KeyCodesX;

    const/16 v3, 0x3c0

    invoke-direct {v1, p0, v2, v3}, Lcom/eltechs/axs/Keyboard$XKey;-><init>(Lcom/eltechs/axs/Keyboard;Lcom/eltechs/axs/KeyCodesX;I)V

    const/16 v2, 0x100

    aput-object v1, v0, v2

    .line 470
    iget-object v0, p0, Lcom/eltechs/axs/Keyboard;->UnicodeToXKeyMap:[Lcom/eltechs/axs/Keyboard$XKey;

    new-instance v1, Lcom/eltechs/axs/Keyboard$XKey;

    sget-object v2, Lcom/eltechs/axs/KeyCodesX;->KEY_K:Lcom/eltechs/axs/KeyCodesX;

    const/16 v3, 0x3e0

    invoke-direct {v1, p0, v2, v3}, Lcom/eltechs/axs/Keyboard$XKey;-><init>(Lcom/eltechs/axs/Keyboard;Lcom/eltechs/axs/KeyCodesX;I)V

    const/16 v2, 0x101

    aput-object v1, v0, v2

    .line 471
    iget-object v0, p0, Lcom/eltechs/axs/Keyboard;->UnicodeToXKeyMap:[Lcom/eltechs/axs/Keyboard$XKey;

    new-instance v1, Lcom/eltechs/axs/Keyboard$XKey;

    sget-object v2, Lcom/eltechs/axs/KeyCodesX;->KEY_L:Lcom/eltechs/axs/KeyCodesX;

    const/16 v3, 0x1c3

    invoke-direct {v1, p0, v2, v3}, Lcom/eltechs/axs/Keyboard$XKey;-><init>(Lcom/eltechs/axs/Keyboard;Lcom/eltechs/axs/KeyCodesX;I)V

    const/16 v2, 0x102

    aput-object v1, v0, v2

    .line 472
    iget-object v0, p0, Lcom/eltechs/axs/Keyboard;->UnicodeToXKeyMap:[Lcom/eltechs/axs/Keyboard$XKey;

    new-instance v1, Lcom/eltechs/axs/Keyboard$XKey;

    sget-object v2, Lcom/eltechs/axs/KeyCodesX;->KEY_M:Lcom/eltechs/axs/KeyCodesX;

    const/16 v3, 0x1e3

    invoke-direct {v1, p0, v2, v3}, Lcom/eltechs/axs/Keyboard$XKey;-><init>(Lcom/eltechs/axs/Keyboard;Lcom/eltechs/axs/KeyCodesX;I)V

    const/16 v2, 0x103

    aput-object v1, v0, v2

    .line 473
    iget-object v0, p0, Lcom/eltechs/axs/Keyboard;->UnicodeToXKeyMap:[Lcom/eltechs/axs/Keyboard$XKey;

    new-instance v1, Lcom/eltechs/axs/Keyboard$XKey;

    sget-object v2, Lcom/eltechs/axs/KeyCodesX;->KEY_N:Lcom/eltechs/axs/KeyCodesX;

    const/16 v3, 0x1a1

    invoke-direct {v1, p0, v2, v3}, Lcom/eltechs/axs/Keyboard$XKey;-><init>(Lcom/eltechs/axs/Keyboard;Lcom/eltechs/axs/KeyCodesX;I)V

    const/16 v2, 0x104

    aput-object v1, v0, v2

    .line 474
    iget-object v0, p0, Lcom/eltechs/axs/Keyboard;->UnicodeToXKeyMap:[Lcom/eltechs/axs/Keyboard$XKey;

    new-instance v1, Lcom/eltechs/axs/Keyboard$XKey;

    sget-object v2, Lcom/eltechs/axs/KeyCodesX;->KEY_O:Lcom/eltechs/axs/KeyCodesX;

    const/16 v3, 0x1b1

    invoke-direct {v1, p0, v2, v3}, Lcom/eltechs/axs/Keyboard$XKey;-><init>(Lcom/eltechs/axs/Keyboard;Lcom/eltechs/axs/KeyCodesX;I)V

    const/16 v2, 0x105

    aput-object v1, v0, v2

    .line 475
    iget-object v0, p0, Lcom/eltechs/axs/Keyboard;->UnicodeToXKeyMap:[Lcom/eltechs/axs/Keyboard$XKey;

    new-instance v1, Lcom/eltechs/axs/Keyboard$XKey;

    sget-object v2, Lcom/eltechs/axs/KeyCodesX;->KEY_P:Lcom/eltechs/axs/KeyCodesX;

    const/16 v3, 0x1c6

    invoke-direct {v1, p0, v2, v3}, Lcom/eltechs/axs/Keyboard$XKey;-><init>(Lcom/eltechs/axs/Keyboard;Lcom/eltechs/axs/KeyCodesX;I)V

    const/16 v2, 0x106

    aput-object v1, v0, v2

    .line 476
    iget-object v0, p0, Lcom/eltechs/axs/Keyboard;->UnicodeToXKeyMap:[Lcom/eltechs/axs/Keyboard$XKey;

    new-instance v1, Lcom/eltechs/axs/Keyboard$XKey;

    sget-object v2, Lcom/eltechs/axs/KeyCodesX;->KEY_Q:Lcom/eltechs/axs/KeyCodesX;

    const/16 v3, 0x1e6

    invoke-direct {v1, p0, v2, v3}, Lcom/eltechs/axs/Keyboard$XKey;-><init>(Lcom/eltechs/axs/Keyboard;Lcom/eltechs/axs/KeyCodesX;I)V

    const/16 v2, 0x107

    aput-object v1, v0, v2

    .line 477
    iget-object v0, p0, Lcom/eltechs/axs/Keyboard;->UnicodeToXKeyMap:[Lcom/eltechs/axs/Keyboard$XKey;

    new-instance v1, Lcom/eltechs/axs/Keyboard$XKey;

    sget-object v2, Lcom/eltechs/axs/KeyCodesX;->KEY_R:Lcom/eltechs/axs/KeyCodesX;

    const/16 v3, 0x2c6

    invoke-direct {v1, p0, v2, v3}, Lcom/eltechs/axs/Keyboard$XKey;-><init>(Lcom/eltechs/axs/Keyboard;Lcom/eltechs/axs/KeyCodesX;I)V

    const/16 v2, 0x108

    aput-object v1, v0, v2

    .line 478
    iget-object v0, p0, Lcom/eltechs/axs/Keyboard;->UnicodeToXKeyMap:[Lcom/eltechs/axs/Keyboard$XKey;

    new-instance v1, Lcom/eltechs/axs/Keyboard$XKey;

    sget-object v2, Lcom/eltechs/axs/KeyCodesX;->KEY_S:Lcom/eltechs/axs/KeyCodesX;

    const/16 v3, 0x2e6

    invoke-direct {v1, p0, v2, v3}, Lcom/eltechs/axs/Keyboard$XKey;-><init>(Lcom/eltechs/axs/Keyboard;Lcom/eltechs/axs/KeyCodesX;I)V

    const/16 v2, 0x109

    aput-object v1, v0, v2

    .line 479
    iget-object v0, p0, Lcom/eltechs/axs/Keyboard;->UnicodeToXKeyMap:[Lcom/eltechs/axs/Keyboard$XKey;

    new-instance v1, Lcom/eltechs/axs/Keyboard$XKey;

    sget-object v2, Lcom/eltechs/axs/KeyCodesX;->KEY_T:Lcom/eltechs/axs/KeyCodesX;

    const/16 v3, 0x2c5

    invoke-direct {v1, p0, v2, v3}, Lcom/eltechs/axs/Keyboard$XKey;-><init>(Lcom/eltechs/axs/Keyboard;Lcom/eltechs/axs/KeyCodesX;I)V

    const/16 v2, 0x10a

    aput-object v1, v0, v2

    .line 480
    iget-object v0, p0, Lcom/eltechs/axs/Keyboard;->UnicodeToXKeyMap:[Lcom/eltechs/axs/Keyboard$XKey;

    new-instance v1, Lcom/eltechs/axs/Keyboard$XKey;

    sget-object v2, Lcom/eltechs/axs/KeyCodesX;->KEY_U:Lcom/eltechs/axs/KeyCodesX;

    const/16 v3, 0x2e5

    invoke-direct {v1, p0, v2, v3}, Lcom/eltechs/axs/Keyboard$XKey;-><init>(Lcom/eltechs/axs/Keyboard;Lcom/eltechs/axs/KeyCodesX;I)V

    const/16 v2, 0x10b

    aput-object v1, v0, v2

    .line 481
    iget-object v0, p0, Lcom/eltechs/axs/Keyboard;->UnicodeToXKeyMap:[Lcom/eltechs/axs/Keyboard$XKey;

    new-instance v1, Lcom/eltechs/axs/Keyboard$XKey;

    sget-object v2, Lcom/eltechs/axs/KeyCodesX;->KEY_V:Lcom/eltechs/axs/KeyCodesX;

    const/16 v3, 0x1c8

    invoke-direct {v1, p0, v2, v3}, Lcom/eltechs/axs/Keyboard$XKey;-><init>(Lcom/eltechs/axs/Keyboard;Lcom/eltechs/axs/KeyCodesX;I)V

    const/16 v2, 0x10c

    aput-object v1, v0, v2

    .line 482
    iget-object v0, p0, Lcom/eltechs/axs/Keyboard;->UnicodeToXKeyMap:[Lcom/eltechs/axs/Keyboard$XKey;

    new-instance v1, Lcom/eltechs/axs/Keyboard$XKey;

    sget-object v2, Lcom/eltechs/axs/KeyCodesX;->KEY_W:Lcom/eltechs/axs/KeyCodesX;

    const/16 v3, 0x1e8

    invoke-direct {v1, p0, v2, v3}, Lcom/eltechs/axs/Keyboard$XKey;-><init>(Lcom/eltechs/axs/Keyboard;Lcom/eltechs/axs/KeyCodesX;I)V

    const/16 v2, 0x10d

    aput-object v1, v0, v2

    .line 483
    iget-object v0, p0, Lcom/eltechs/axs/Keyboard;->UnicodeToXKeyMap:[Lcom/eltechs/axs/Keyboard$XKey;

    new-instance v1, Lcom/eltechs/axs/Keyboard$XKey;

    sget-object v2, Lcom/eltechs/axs/KeyCodesX;->KEY_X:Lcom/eltechs/axs/KeyCodesX;

    const/16 v3, 0x1cf

    invoke-direct {v1, p0, v2, v3}, Lcom/eltechs/axs/Keyboard$XKey;-><init>(Lcom/eltechs/axs/Keyboard;Lcom/eltechs/axs/KeyCodesX;I)V

    const/16 v2, 0x10e

    aput-object v1, v0, v2

    .line 484
    iget-object v0, p0, Lcom/eltechs/axs/Keyboard;->UnicodeToXKeyMap:[Lcom/eltechs/axs/Keyboard$XKey;

    new-instance v1, Lcom/eltechs/axs/Keyboard$XKey;

    sget-object v2, Lcom/eltechs/axs/KeyCodesX;->KEY_Y:Lcom/eltechs/axs/KeyCodesX;

    const/16 v3, 0x1ef

    invoke-direct {v1, p0, v2, v3}, Lcom/eltechs/axs/Keyboard$XKey;-><init>(Lcom/eltechs/axs/Keyboard;Lcom/eltechs/axs/KeyCodesX;I)V

    const/16 v2, 0x10f

    aput-object v1, v0, v2

    .line 485
    iget-object v0, p0, Lcom/eltechs/axs/Keyboard;->UnicodeToXKeyMap:[Lcom/eltechs/axs/Keyboard$XKey;

    new-instance v1, Lcom/eltechs/axs/Keyboard$XKey;

    sget-object v2, Lcom/eltechs/axs/KeyCodesX;->KEY_Z:Lcom/eltechs/axs/KeyCodesX;

    const/16 v3, 0x1d0

    invoke-direct {v1, p0, v2, v3}, Lcom/eltechs/axs/Keyboard$XKey;-><init>(Lcom/eltechs/axs/Keyboard;Lcom/eltechs/axs/KeyCodesX;I)V

    const/16 v2, 0x110

    aput-object v1, v0, v2

    .line 486
    iget-object v0, p0, Lcom/eltechs/axs/Keyboard;->UnicodeToXKeyMap:[Lcom/eltechs/axs/Keyboard$XKey;

    new-instance v1, Lcom/eltechs/axs/Keyboard$XKey;

    sget-object v2, Lcom/eltechs/axs/KeyCodesX;->KEY_A:Lcom/eltechs/axs/KeyCodesX;

    const/16 v3, 0x1f0

    invoke-direct {v1, p0, v2, v3}, Lcom/eltechs/axs/Keyboard$XKey;-><init>(Lcom/eltechs/axs/Keyboard;Lcom/eltechs/axs/KeyCodesX;I)V

    const/16 v2, 0x111

    aput-object v1, v0, v2

    .line 487
    iget-object v0, p0, Lcom/eltechs/axs/Keyboard;->UnicodeToXKeyMap:[Lcom/eltechs/axs/Keyboard$XKey;

    new-instance v1, Lcom/eltechs/axs/Keyboard$XKey;

    sget-object v2, Lcom/eltechs/axs/KeyCodesX;->KEY_B:Lcom/eltechs/axs/KeyCodesX;

    const/16 v3, 0x3aa

    invoke-direct {v1, p0, v2, v3}, Lcom/eltechs/axs/Keyboard$XKey;-><init>(Lcom/eltechs/axs/Keyboard;Lcom/eltechs/axs/KeyCodesX;I)V

    const/16 v2, 0x112

    aput-object v1, v0, v2

    .line 488
    iget-object v0, p0, Lcom/eltechs/axs/Keyboard;->UnicodeToXKeyMap:[Lcom/eltechs/axs/Keyboard$XKey;

    new-instance v1, Lcom/eltechs/axs/Keyboard$XKey;

    sget-object v2, Lcom/eltechs/axs/KeyCodesX;->KEY_C:Lcom/eltechs/axs/KeyCodesX;

    const/16 v3, 0x3ba

    invoke-direct {v1, p0, v2, v3}, Lcom/eltechs/axs/Keyboard$XKey;-><init>(Lcom/eltechs/axs/Keyboard;Lcom/eltechs/axs/KeyCodesX;I)V

    const/16 v2, 0x113

    aput-object v1, v0, v2

    .line 489
    iget-object v0, p0, Lcom/eltechs/axs/Keyboard;->UnicodeToXKeyMap:[Lcom/eltechs/axs/Keyboard$XKey;

    new-instance v1, Lcom/eltechs/axs/Keyboard$XKey;

    sget-object v2, Lcom/eltechs/axs/KeyCodesX;->KEY_D:Lcom/eltechs/axs/KeyCodesX;

    const/16 v3, 0x3cc

    invoke-direct {v1, p0, v2, v3}, Lcom/eltechs/axs/Keyboard$XKey;-><init>(Lcom/eltechs/axs/Keyboard;Lcom/eltechs/axs/KeyCodesX;I)V

    const/16 v2, 0x116

    aput-object v1, v0, v2

    .line 490
    iget-object v0, p0, Lcom/eltechs/axs/Keyboard;->UnicodeToXKeyMap:[Lcom/eltechs/axs/Keyboard$XKey;

    new-instance v1, Lcom/eltechs/axs/Keyboard$XKey;

    sget-object v2, Lcom/eltechs/axs/KeyCodesX;->KEY_E:Lcom/eltechs/axs/KeyCodesX;

    const/16 v3, 0x3ec

    invoke-direct {v1, p0, v2, v3}, Lcom/eltechs/axs/Keyboard$XKey;-><init>(Lcom/eltechs/axs/Keyboard;Lcom/eltechs/axs/KeyCodesX;I)V

    const/16 v2, 0x117

    aput-object v1, v0, v2

    .line 491
    iget-object v0, p0, Lcom/eltechs/axs/Keyboard;->UnicodeToXKeyMap:[Lcom/eltechs/axs/Keyboard$XKey;

    new-instance v1, Lcom/eltechs/axs/Keyboard$XKey;

    sget-object v2, Lcom/eltechs/axs/KeyCodesX;->KEY_F:Lcom/eltechs/axs/KeyCodesX;

    const/16 v3, 0x1ca

    invoke-direct {v1, p0, v2, v3}, Lcom/eltechs/axs/Keyboard$XKey;-><init>(Lcom/eltechs/axs/Keyboard;Lcom/eltechs/axs/KeyCodesX;I)V

    const/16 v2, 0x118

    aput-object v1, v0, v2

    .line 492
    iget-object v0, p0, Lcom/eltechs/axs/Keyboard;->UnicodeToXKeyMap:[Lcom/eltechs/axs/Keyboard$XKey;

    new-instance v1, Lcom/eltechs/axs/Keyboard$XKey;

    sget-object v2, Lcom/eltechs/axs/KeyCodesX;->KEY_G:Lcom/eltechs/axs/KeyCodesX;

    const/16 v3, 0x1ea

    invoke-direct {v1, p0, v2, v3}, Lcom/eltechs/axs/Keyboard$XKey;-><init>(Lcom/eltechs/axs/Keyboard;Lcom/eltechs/axs/KeyCodesX;I)V

    const/16 v2, 0x119

    aput-object v1, v0, v2

    .line 493
    iget-object v0, p0, Lcom/eltechs/axs/Keyboard;->UnicodeToXKeyMap:[Lcom/eltechs/axs/Keyboard$XKey;

    new-instance v1, Lcom/eltechs/axs/Keyboard$XKey;

    sget-object v2, Lcom/eltechs/axs/KeyCodesX;->KEY_H:Lcom/eltechs/axs/KeyCodesX;

    const/16 v3, 0x1cc

    invoke-direct {v1, p0, v2, v3}, Lcom/eltechs/axs/Keyboard$XKey;-><init>(Lcom/eltechs/axs/Keyboard;Lcom/eltechs/axs/KeyCodesX;I)V

    const/16 v2, 0x11a

    aput-object v1, v0, v2

    .line 494
    iget-object v0, p0, Lcom/eltechs/axs/Keyboard;->UnicodeToXKeyMap:[Lcom/eltechs/axs/Keyboard$XKey;

    new-instance v1, Lcom/eltechs/axs/Keyboard$XKey;

    sget-object v2, Lcom/eltechs/axs/KeyCodesX;->KEY_I:Lcom/eltechs/axs/KeyCodesX;

    const/16 v3, 0x1ec

    invoke-direct {v1, p0, v2, v3}, Lcom/eltechs/axs/Keyboard$XKey;-><init>(Lcom/eltechs/axs/Keyboard;Lcom/eltechs/axs/KeyCodesX;I)V

    const/16 v2, 0x11b

    aput-object v1, v0, v2

    .line 495
    iget-object v0, p0, Lcom/eltechs/axs/Keyboard;->UnicodeToXKeyMap:[Lcom/eltechs/axs/Keyboard$XKey;

    new-instance v1, Lcom/eltechs/axs/Keyboard$XKey;

    sget-object v2, Lcom/eltechs/axs/KeyCodesX;->KEY_J:Lcom/eltechs/axs/KeyCodesX;

    const/16 v3, 0x2d8

    invoke-direct {v1, p0, v2, v3}, Lcom/eltechs/axs/Keyboard$XKey;-><init>(Lcom/eltechs/axs/Keyboard;Lcom/eltechs/axs/KeyCodesX;I)V

    const/16 v2, 0x11c

    aput-object v1, v0, v2

    .line 496
    iget-object v0, p0, Lcom/eltechs/axs/Keyboard;->UnicodeToXKeyMap:[Lcom/eltechs/axs/Keyboard$XKey;

    new-instance v1, Lcom/eltechs/axs/Keyboard$XKey;

    sget-object v2, Lcom/eltechs/axs/KeyCodesX;->KEY_K:Lcom/eltechs/axs/KeyCodesX;

    const/16 v3, 0x2f8

    invoke-direct {v1, p0, v2, v3}, Lcom/eltechs/axs/Keyboard$XKey;-><init>(Lcom/eltechs/axs/Keyboard;Lcom/eltechs/axs/KeyCodesX;I)V

    const/16 v2, 0x11d

    aput-object v1, v0, v2

    .line 497
    iget-object v0, p0, Lcom/eltechs/axs/Keyboard;->UnicodeToXKeyMap:[Lcom/eltechs/axs/Keyboard$XKey;

    new-instance v1, Lcom/eltechs/axs/Keyboard$XKey;

    sget-object v2, Lcom/eltechs/axs/KeyCodesX;->KEY_L:Lcom/eltechs/axs/KeyCodesX;

    const/16 v3, 0x2ab

    invoke-direct {v1, p0, v2, v3}, Lcom/eltechs/axs/Keyboard$XKey;-><init>(Lcom/eltechs/axs/Keyboard;Lcom/eltechs/axs/KeyCodesX;I)V

    const/16 v2, 0x11e

    aput-object v1, v0, v2

    .line 498
    iget-object v0, p0, Lcom/eltechs/axs/Keyboard;->UnicodeToXKeyMap:[Lcom/eltechs/axs/Keyboard$XKey;

    new-instance v1, Lcom/eltechs/axs/Keyboard$XKey;

    sget-object v2, Lcom/eltechs/axs/KeyCodesX;->KEY_M:Lcom/eltechs/axs/KeyCodesX;

    const/16 v3, 0x2bb

    invoke-direct {v1, p0, v2, v3}, Lcom/eltechs/axs/Keyboard$XKey;-><init>(Lcom/eltechs/axs/Keyboard;Lcom/eltechs/axs/KeyCodesX;I)V

    const/16 v2, 0x11f

    aput-object v1, v0, v2

    .line 499
    iget-object v0, p0, Lcom/eltechs/axs/Keyboard;->UnicodeToXKeyMap:[Lcom/eltechs/axs/Keyboard$XKey;

    new-instance v1, Lcom/eltechs/axs/Keyboard$XKey;

    sget-object v2, Lcom/eltechs/axs/KeyCodesX;->KEY_N:Lcom/eltechs/axs/KeyCodesX;

    const/16 v3, 0x2d5

    invoke-direct {v1, p0, v2, v3}, Lcom/eltechs/axs/Keyboard$XKey;-><init>(Lcom/eltechs/axs/Keyboard;Lcom/eltechs/axs/KeyCodesX;I)V

    const/16 v2, 0x120

    aput-object v1, v0, v2

    .line 500
    iget-object v0, p0, Lcom/eltechs/axs/Keyboard;->UnicodeToXKeyMap:[Lcom/eltechs/axs/Keyboard$XKey;

    new-instance v1, Lcom/eltechs/axs/Keyboard$XKey;

    sget-object v2, Lcom/eltechs/axs/KeyCodesX;->KEY_O:Lcom/eltechs/axs/KeyCodesX;

    const/16 v3, 0x2f5

    invoke-direct {v1, p0, v2, v3}, Lcom/eltechs/axs/Keyboard$XKey;-><init>(Lcom/eltechs/axs/Keyboard;Lcom/eltechs/axs/KeyCodesX;I)V

    const/16 v2, 0x121

    aput-object v1, v0, v2

    .line 501
    iget-object v0, p0, Lcom/eltechs/axs/Keyboard;->UnicodeToXKeyMap:[Lcom/eltechs/axs/Keyboard$XKey;

    new-instance v1, Lcom/eltechs/axs/Keyboard$XKey;

    sget-object v2, Lcom/eltechs/axs/KeyCodesX;->KEY_P:Lcom/eltechs/axs/KeyCodesX;

    const/16 v3, 0x3ab

    invoke-direct {v1, p0, v2, v3}, Lcom/eltechs/axs/Keyboard$XKey;-><init>(Lcom/eltechs/axs/Keyboard;Lcom/eltechs/axs/KeyCodesX;I)V

    const/16 v2, 0x122

    aput-object v1, v0, v2

    .line 502
    iget-object v0, p0, Lcom/eltechs/axs/Keyboard;->UnicodeToXKeyMap:[Lcom/eltechs/axs/Keyboard$XKey;

    new-instance v1, Lcom/eltechs/axs/Keyboard$XKey;

    sget-object v2, Lcom/eltechs/axs/KeyCodesX;->KEY_Q:Lcom/eltechs/axs/KeyCodesX;

    const/16 v3, 0x3bb

    invoke-direct {v1, p0, v2, v3}, Lcom/eltechs/axs/Keyboard$XKey;-><init>(Lcom/eltechs/axs/Keyboard;Lcom/eltechs/axs/KeyCodesX;I)V

    const/16 v2, 0x123

    aput-object v1, v0, v2

    .line 503
    iget-object v0, p0, Lcom/eltechs/axs/Keyboard;->UnicodeToXKeyMap:[Lcom/eltechs/axs/Keyboard$XKey;

    new-instance v1, Lcom/eltechs/axs/Keyboard$XKey;

    sget-object v2, Lcom/eltechs/axs/KeyCodesX;->KEY_R:Lcom/eltechs/axs/KeyCodesX;

    const/16 v3, 0x2a6

    invoke-direct {v1, p0, v2, v3}, Lcom/eltechs/axs/Keyboard$XKey;-><init>(Lcom/eltechs/axs/Keyboard;Lcom/eltechs/axs/KeyCodesX;I)V

    const/16 v2, 0x124

    aput-object v1, v0, v2

    .line 504
    iget-object v0, p0, Lcom/eltechs/axs/Keyboard;->UnicodeToXKeyMap:[Lcom/eltechs/axs/Keyboard$XKey;

    new-instance v1, Lcom/eltechs/axs/Keyboard$XKey;

    sget-object v2, Lcom/eltechs/axs/KeyCodesX;->KEY_S:Lcom/eltechs/axs/KeyCodesX;

    const/16 v3, 0x2b6

    invoke-direct {v1, p0, v2, v3}, Lcom/eltechs/axs/Keyboard$XKey;-><init>(Lcom/eltechs/axs/Keyboard;Lcom/eltechs/axs/KeyCodesX;I)V

    const/16 v2, 0x125

    aput-object v1, v0, v2

    .line 505
    iget-object v0, p0, Lcom/eltechs/axs/Keyboard;->UnicodeToXKeyMap:[Lcom/eltechs/axs/Keyboard$XKey;

    new-instance v1, Lcom/eltechs/axs/Keyboard$XKey;

    sget-object v2, Lcom/eltechs/axs/KeyCodesX;->KEY_T:Lcom/eltechs/axs/KeyCodesX;

    const/16 v3, 0x2a1

    invoke-direct {v1, p0, v2, v3}, Lcom/eltechs/axs/Keyboard$XKey;-><init>(Lcom/eltechs/axs/Keyboard;Lcom/eltechs/axs/KeyCodesX;I)V

    const/16 v2, 0x126

    aput-object v1, v0, v2

    .line 506
    iget-object v0, p0, Lcom/eltechs/axs/Keyboard;->UnicodeToXKeyMap:[Lcom/eltechs/axs/Keyboard$XKey;

    new-instance v1, Lcom/eltechs/axs/Keyboard$XKey;

    sget-object v2, Lcom/eltechs/axs/KeyCodesX;->KEY_U:Lcom/eltechs/axs/KeyCodesX;

    const/16 v3, 0x2b1

    invoke-direct {v1, p0, v2, v3}, Lcom/eltechs/axs/Keyboard$XKey;-><init>(Lcom/eltechs/axs/Keyboard;Lcom/eltechs/axs/KeyCodesX;I)V

    const/16 v2, 0x127

    aput-object v1, v0, v2

    .line 507
    iget-object v0, p0, Lcom/eltechs/axs/Keyboard;->UnicodeToXKeyMap:[Lcom/eltechs/axs/Keyboard$XKey;

    new-instance v1, Lcom/eltechs/axs/Keyboard$XKey;

    sget-object v2, Lcom/eltechs/axs/KeyCodesX;->KEY_V:Lcom/eltechs/axs/KeyCodesX;

    const/16 v3, 0x3a5

    invoke-direct {v1, p0, v2, v3}, Lcom/eltechs/axs/Keyboard$XKey;-><init>(Lcom/eltechs/axs/Keyboard;Lcom/eltechs/axs/KeyCodesX;I)V

    const/16 v2, 0x128

    aput-object v1, v0, v2

    .line 508
    iget-object v0, p0, Lcom/eltechs/axs/Keyboard;->UnicodeToXKeyMap:[Lcom/eltechs/axs/Keyboard$XKey;

    new-instance v1, Lcom/eltechs/axs/Keyboard$XKey;

    sget-object v2, Lcom/eltechs/axs/KeyCodesX;->KEY_W:Lcom/eltechs/axs/KeyCodesX;

    const/16 v3, 0x3b5

    invoke-direct {v1, p0, v2, v3}, Lcom/eltechs/axs/Keyboard$XKey;-><init>(Lcom/eltechs/axs/Keyboard;Lcom/eltechs/axs/KeyCodesX;I)V

    const/16 v2, 0x129

    aput-object v1, v0, v2

    .line 509
    iget-object v0, p0, Lcom/eltechs/axs/Keyboard;->UnicodeToXKeyMap:[Lcom/eltechs/axs/Keyboard$XKey;

    new-instance v1, Lcom/eltechs/axs/Keyboard$XKey;

    sget-object v2, Lcom/eltechs/axs/KeyCodesX;->KEY_X:Lcom/eltechs/axs/KeyCodesX;

    const/16 v3, 0x3cf

    invoke-direct {v1, p0, v2, v3}, Lcom/eltechs/axs/Keyboard$XKey;-><init>(Lcom/eltechs/axs/Keyboard;Lcom/eltechs/axs/KeyCodesX;I)V

    const/16 v2, 0x12a

    aput-object v1, v0, v2

    .line 510
    iget-object v0, p0, Lcom/eltechs/axs/Keyboard;->UnicodeToXKeyMap:[Lcom/eltechs/axs/Keyboard$XKey;

    new-instance v1, Lcom/eltechs/axs/Keyboard$XKey;

    sget-object v2, Lcom/eltechs/axs/KeyCodesX;->KEY_Y:Lcom/eltechs/axs/KeyCodesX;

    const/16 v3, 0x3ef

    invoke-direct {v1, p0, v2, v3}, Lcom/eltechs/axs/Keyboard$XKey;-><init>(Lcom/eltechs/axs/Keyboard;Lcom/eltechs/axs/KeyCodesX;I)V

    const/16 v2, 0x12b

    aput-object v1, v0, v2

    .line 511
    iget-object v0, p0, Lcom/eltechs/axs/Keyboard;->UnicodeToXKeyMap:[Lcom/eltechs/axs/Keyboard$XKey;

    new-instance v1, Lcom/eltechs/axs/Keyboard$XKey;

    sget-object v2, Lcom/eltechs/axs/KeyCodesX;->KEY_Z:Lcom/eltechs/axs/KeyCodesX;

    const/16 v3, 0x3c7

    invoke-direct {v1, p0, v2, v3}, Lcom/eltechs/axs/Keyboard$XKey;-><init>(Lcom/eltechs/axs/Keyboard;Lcom/eltechs/axs/KeyCodesX;I)V

    const/16 v2, 0x12e

    aput-object v1, v0, v2

    .line 512
    iget-object v0, p0, Lcom/eltechs/axs/Keyboard;->UnicodeToXKeyMap:[Lcom/eltechs/axs/Keyboard$XKey;

    new-instance v1, Lcom/eltechs/axs/Keyboard$XKey;

    sget-object v2, Lcom/eltechs/axs/KeyCodesX;->KEY_A:Lcom/eltechs/axs/KeyCodesX;

    const/16 v3, 0x3e7

    invoke-direct {v1, p0, v2, v3}, Lcom/eltechs/axs/Keyboard$XKey;-><init>(Lcom/eltechs/axs/Keyboard;Lcom/eltechs/axs/KeyCodesX;I)V

    const/16 v2, 0x12f

    aput-object v1, v0, v2

    .line 513
    iget-object v0, p0, Lcom/eltechs/axs/Keyboard;->UnicodeToXKeyMap:[Lcom/eltechs/axs/Keyboard$XKey;

    new-instance v1, Lcom/eltechs/axs/Keyboard$XKey;

    sget-object v2, Lcom/eltechs/axs/KeyCodesX;->KEY_B:Lcom/eltechs/axs/KeyCodesX;

    const/16 v3, 0x2a9

    invoke-direct {v1, p0, v2, v3}, Lcom/eltechs/axs/Keyboard$XKey;-><init>(Lcom/eltechs/axs/Keyboard;Lcom/eltechs/axs/KeyCodesX;I)V

    const/16 v2, 0x130

    aput-object v1, v0, v2

    .line 514
    iget-object v0, p0, Lcom/eltechs/axs/Keyboard;->UnicodeToXKeyMap:[Lcom/eltechs/axs/Keyboard$XKey;

    new-instance v1, Lcom/eltechs/axs/Keyboard$XKey;

    sget-object v2, Lcom/eltechs/axs/KeyCodesX;->KEY_C:Lcom/eltechs/axs/KeyCodesX;

    const/16 v3, 0x2b9

    invoke-direct {v1, p0, v2, v3}, Lcom/eltechs/axs/Keyboard$XKey;-><init>(Lcom/eltechs/axs/Keyboard;Lcom/eltechs/axs/KeyCodesX;I)V

    const/16 v2, 0x131

    aput-object v1, v0, v2

    .line 515
    iget-object v0, p0, Lcom/eltechs/axs/Keyboard;->UnicodeToXKeyMap:[Lcom/eltechs/axs/Keyboard$XKey;

    new-instance v1, Lcom/eltechs/axs/Keyboard$XKey;

    sget-object v2, Lcom/eltechs/axs/KeyCodesX;->KEY_D:Lcom/eltechs/axs/KeyCodesX;

    const/16 v3, 0x2ac

    invoke-direct {v1, p0, v2, v3}, Lcom/eltechs/axs/Keyboard$XKey;-><init>(Lcom/eltechs/axs/Keyboard;Lcom/eltechs/axs/KeyCodesX;I)V

    const/16 v2, 0x134

    aput-object v1, v0, v2

    .line 516
    iget-object v0, p0, Lcom/eltechs/axs/Keyboard;->UnicodeToXKeyMap:[Lcom/eltechs/axs/Keyboard$XKey;

    new-instance v1, Lcom/eltechs/axs/Keyboard$XKey;

    sget-object v2, Lcom/eltechs/axs/KeyCodesX;->KEY_E:Lcom/eltechs/axs/KeyCodesX;

    const/16 v3, 0x2bc

    invoke-direct {v1, p0, v2, v3}, Lcom/eltechs/axs/Keyboard$XKey;-><init>(Lcom/eltechs/axs/Keyboard;Lcom/eltechs/axs/KeyCodesX;I)V

    const/16 v2, 0x135

    aput-object v1, v0, v2

    .line 517
    iget-object v0, p0, Lcom/eltechs/axs/Keyboard;->UnicodeToXKeyMap:[Lcom/eltechs/axs/Keyboard$XKey;

    new-instance v1, Lcom/eltechs/axs/Keyboard$XKey;

    sget-object v2, Lcom/eltechs/axs/KeyCodesX;->KEY_F:Lcom/eltechs/axs/KeyCodesX;

    const/16 v3, 0x3d3

    invoke-direct {v1, p0, v2, v3}, Lcom/eltechs/axs/Keyboard$XKey;-><init>(Lcom/eltechs/axs/Keyboard;Lcom/eltechs/axs/KeyCodesX;I)V

    const/16 v2, 0x136

    aput-object v1, v0, v2

    .line 518
    iget-object v0, p0, Lcom/eltechs/axs/Keyboard;->UnicodeToXKeyMap:[Lcom/eltechs/axs/Keyboard$XKey;

    new-instance v1, Lcom/eltechs/axs/Keyboard$XKey;

    sget-object v2, Lcom/eltechs/axs/KeyCodesX;->KEY_G:Lcom/eltechs/axs/KeyCodesX;

    const/16 v3, 0x3f3

    invoke-direct {v1, p0, v2, v3}, Lcom/eltechs/axs/Keyboard$XKey;-><init>(Lcom/eltechs/axs/Keyboard;Lcom/eltechs/axs/KeyCodesX;I)V

    const/16 v2, 0x137

    aput-object v1, v0, v2

    .line 519
    iget-object v0, p0, Lcom/eltechs/axs/Keyboard;->UnicodeToXKeyMap:[Lcom/eltechs/axs/Keyboard$XKey;

    new-instance v1, Lcom/eltechs/axs/Keyboard$XKey;

    sget-object v2, Lcom/eltechs/axs/KeyCodesX;->KEY_H:Lcom/eltechs/axs/KeyCodesX;

    const/16 v3, 0x3a2

    invoke-direct {v1, p0, v2, v3}, Lcom/eltechs/axs/Keyboard$XKey;-><init>(Lcom/eltechs/axs/Keyboard;Lcom/eltechs/axs/KeyCodesX;I)V

    const/16 v2, 0x138

    aput-object v1, v0, v2

    .line 520
    iget-object v0, p0, Lcom/eltechs/axs/Keyboard;->UnicodeToXKeyMap:[Lcom/eltechs/axs/Keyboard$XKey;

    new-instance v1, Lcom/eltechs/axs/Keyboard$XKey;

    sget-object v2, Lcom/eltechs/axs/KeyCodesX;->KEY_I:Lcom/eltechs/axs/KeyCodesX;

    const/16 v3, 0x1c5

    invoke-direct {v1, p0, v2, v3}, Lcom/eltechs/axs/Keyboard$XKey;-><init>(Lcom/eltechs/axs/Keyboard;Lcom/eltechs/axs/KeyCodesX;I)V

    const/16 v2, 0x139

    aput-object v1, v0, v2

    .line 521
    iget-object v0, p0, Lcom/eltechs/axs/Keyboard;->UnicodeToXKeyMap:[Lcom/eltechs/axs/Keyboard$XKey;

    new-instance v1, Lcom/eltechs/axs/Keyboard$XKey;

    sget-object v2, Lcom/eltechs/axs/KeyCodesX;->KEY_J:Lcom/eltechs/axs/KeyCodesX;

    const/16 v3, 0x1e5

    invoke-direct {v1, p0, v2, v3}, Lcom/eltechs/axs/Keyboard$XKey;-><init>(Lcom/eltechs/axs/Keyboard;Lcom/eltechs/axs/KeyCodesX;I)V

    const/16 v2, 0x13a

    aput-object v1, v0, v2

    .line 522
    iget-object v0, p0, Lcom/eltechs/axs/Keyboard;->UnicodeToXKeyMap:[Lcom/eltechs/axs/Keyboard$XKey;

    new-instance v1, Lcom/eltechs/axs/Keyboard$XKey;

    sget-object v2, Lcom/eltechs/axs/KeyCodesX;->KEY_K:Lcom/eltechs/axs/KeyCodesX;

    const/16 v3, 0x3a6

    invoke-direct {v1, p0, v2, v3}, Lcom/eltechs/axs/Keyboard$XKey;-><init>(Lcom/eltechs/axs/Keyboard;Lcom/eltechs/axs/KeyCodesX;I)V

    const/16 v2, 0x13b

    aput-object v1, v0, v2

    .line 523
    iget-object v0, p0, Lcom/eltechs/axs/Keyboard;->UnicodeToXKeyMap:[Lcom/eltechs/axs/Keyboard$XKey;

    new-instance v1, Lcom/eltechs/axs/Keyboard$XKey;

    sget-object v2, Lcom/eltechs/axs/KeyCodesX;->KEY_L:Lcom/eltechs/axs/KeyCodesX;

    const/16 v3, 0x3b6

    invoke-direct {v1, p0, v2, v3}, Lcom/eltechs/axs/Keyboard$XKey;-><init>(Lcom/eltechs/axs/Keyboard;Lcom/eltechs/axs/KeyCodesX;I)V

    const/16 v2, 0x13c

    aput-object v1, v0, v2

    .line 524
    iget-object v0, p0, Lcom/eltechs/axs/Keyboard;->UnicodeToXKeyMap:[Lcom/eltechs/axs/Keyboard$XKey;

    new-instance v1, Lcom/eltechs/axs/Keyboard$XKey;

    sget-object v2, Lcom/eltechs/axs/KeyCodesX;->KEY_M:Lcom/eltechs/axs/KeyCodesX;

    const/16 v3, 0x1a5

    invoke-direct {v1, p0, v2, v3}, Lcom/eltechs/axs/Keyboard$XKey;-><init>(Lcom/eltechs/axs/Keyboard;Lcom/eltechs/axs/KeyCodesX;I)V

    const/16 v2, 0x13d

    aput-object v1, v0, v2

    .line 525
    iget-object v0, p0, Lcom/eltechs/axs/Keyboard;->UnicodeToXKeyMap:[Lcom/eltechs/axs/Keyboard$XKey;

    new-instance v1, Lcom/eltechs/axs/Keyboard$XKey;

    sget-object v2, Lcom/eltechs/axs/KeyCodesX;->KEY_N:Lcom/eltechs/axs/KeyCodesX;

    const/16 v3, 0x1b5

    invoke-direct {v1, p0, v2, v3}, Lcom/eltechs/axs/Keyboard$XKey;-><init>(Lcom/eltechs/axs/Keyboard;Lcom/eltechs/axs/KeyCodesX;I)V

    const/16 v2, 0x13e

    aput-object v1, v0, v2

    .line 526
    iget-object v0, p0, Lcom/eltechs/axs/Keyboard;->UnicodeToXKeyMap:[Lcom/eltechs/axs/Keyboard$XKey;

    new-instance v1, Lcom/eltechs/axs/Keyboard$XKey;

    sget-object v2, Lcom/eltechs/axs/KeyCodesX;->KEY_O:Lcom/eltechs/axs/KeyCodesX;

    const/16 v3, 0x1a3

    invoke-direct {v1, p0, v2, v3}, Lcom/eltechs/axs/Keyboard$XKey;-><init>(Lcom/eltechs/axs/Keyboard;Lcom/eltechs/axs/KeyCodesX;I)V

    const/16 v2, 0x141

    aput-object v1, v0, v2

    .line 527
    iget-object v0, p0, Lcom/eltechs/axs/Keyboard;->UnicodeToXKeyMap:[Lcom/eltechs/axs/Keyboard$XKey;

    new-instance v1, Lcom/eltechs/axs/Keyboard$XKey;

    sget-object v2, Lcom/eltechs/axs/KeyCodesX;->KEY_P:Lcom/eltechs/axs/KeyCodesX;

    const/16 v3, 0x1b3

    invoke-direct {v1, p0, v2, v3}, Lcom/eltechs/axs/Keyboard$XKey;-><init>(Lcom/eltechs/axs/Keyboard;Lcom/eltechs/axs/KeyCodesX;I)V

    const/16 v2, 0x142

    aput-object v1, v0, v2

    .line 528
    iget-object v0, p0, Lcom/eltechs/axs/Keyboard;->UnicodeToXKeyMap:[Lcom/eltechs/axs/Keyboard$XKey;

    new-instance v1, Lcom/eltechs/axs/Keyboard$XKey;

    sget-object v2, Lcom/eltechs/axs/KeyCodesX;->KEY_Q:Lcom/eltechs/axs/KeyCodesX;

    const/16 v3, 0x1d1

    invoke-direct {v1, p0, v2, v3}, Lcom/eltechs/axs/Keyboard$XKey;-><init>(Lcom/eltechs/axs/Keyboard;Lcom/eltechs/axs/KeyCodesX;I)V

    const/16 v2, 0x143

    aput-object v1, v0, v2

    .line 529
    iget-object v0, p0, Lcom/eltechs/axs/Keyboard;->UnicodeToXKeyMap:[Lcom/eltechs/axs/Keyboard$XKey;

    new-instance v1, Lcom/eltechs/axs/Keyboard$XKey;

    sget-object v2, Lcom/eltechs/axs/KeyCodesX;->KEY_R:Lcom/eltechs/axs/KeyCodesX;

    const/16 v3, 0x1f1

    invoke-direct {v1, p0, v2, v3}, Lcom/eltechs/axs/Keyboard$XKey;-><init>(Lcom/eltechs/axs/Keyboard;Lcom/eltechs/axs/KeyCodesX;I)V

    const/16 v2, 0x144

    aput-object v1, v0, v2

    .line 530
    iget-object v0, p0, Lcom/eltechs/axs/Keyboard;->UnicodeToXKeyMap:[Lcom/eltechs/axs/Keyboard$XKey;

    new-instance v1, Lcom/eltechs/axs/Keyboard$XKey;

    sget-object v2, Lcom/eltechs/axs/KeyCodesX;->KEY_S:Lcom/eltechs/axs/KeyCodesX;

    const/16 v3, 0x3d1

    invoke-direct {v1, p0, v2, v3}, Lcom/eltechs/axs/Keyboard$XKey;-><init>(Lcom/eltechs/axs/Keyboard;Lcom/eltechs/axs/KeyCodesX;I)V

    const/16 v2, 0x145

    aput-object v1, v0, v2

    .line 531
    iget-object v0, p0, Lcom/eltechs/axs/Keyboard;->UnicodeToXKeyMap:[Lcom/eltechs/axs/Keyboard$XKey;

    new-instance v1, Lcom/eltechs/axs/Keyboard$XKey;

    sget-object v2, Lcom/eltechs/axs/KeyCodesX;->KEY_T:Lcom/eltechs/axs/KeyCodesX;

    const/16 v3, 0x3f1

    invoke-direct {v1, p0, v2, v3}, Lcom/eltechs/axs/Keyboard$XKey;-><init>(Lcom/eltechs/axs/Keyboard;Lcom/eltechs/axs/KeyCodesX;I)V

    const/16 v2, 0x146

    aput-object v1, v0, v2

    .line 532
    iget-object v0, p0, Lcom/eltechs/axs/Keyboard;->UnicodeToXKeyMap:[Lcom/eltechs/axs/Keyboard$XKey;

    new-instance v1, Lcom/eltechs/axs/Keyboard$XKey;

    sget-object v2, Lcom/eltechs/axs/KeyCodesX;->KEY_U:Lcom/eltechs/axs/KeyCodesX;

    const/16 v3, 0x1d2

    invoke-direct {v1, p0, v2, v3}, Lcom/eltechs/axs/Keyboard$XKey;-><init>(Lcom/eltechs/axs/Keyboard;Lcom/eltechs/axs/KeyCodesX;I)V

    const/16 v2, 0x147

    aput-object v1, v0, v2

    .line 533
    iget-object v0, p0, Lcom/eltechs/axs/Keyboard;->UnicodeToXKeyMap:[Lcom/eltechs/axs/Keyboard$XKey;

    new-instance v1, Lcom/eltechs/axs/Keyboard$XKey;

    sget-object v2, Lcom/eltechs/axs/KeyCodesX;->KEY_V:Lcom/eltechs/axs/KeyCodesX;

    const/16 v3, 0x1f2

    invoke-direct {v1, p0, v2, v3}, Lcom/eltechs/axs/Keyboard$XKey;-><init>(Lcom/eltechs/axs/Keyboard;Lcom/eltechs/axs/KeyCodesX;I)V

    const/16 v2, 0x148

    aput-object v1, v0, v2

    .line 534
    iget-object v0, p0, Lcom/eltechs/axs/Keyboard;->UnicodeToXKeyMap:[Lcom/eltechs/axs/Keyboard$XKey;

    new-instance v1, Lcom/eltechs/axs/Keyboard$XKey;

    sget-object v2, Lcom/eltechs/axs/KeyCodesX;->KEY_W:Lcom/eltechs/axs/KeyCodesX;

    const/16 v3, 0x3bd

    invoke-direct {v1, p0, v2, v3}, Lcom/eltechs/axs/Keyboard$XKey;-><init>(Lcom/eltechs/axs/Keyboard;Lcom/eltechs/axs/KeyCodesX;I)V

    const/16 v2, 0x14a

    aput-object v1, v0, v2

    .line 535
    iget-object v0, p0, Lcom/eltechs/axs/Keyboard;->UnicodeToXKeyMap:[Lcom/eltechs/axs/Keyboard$XKey;

    new-instance v1, Lcom/eltechs/axs/Keyboard$XKey;

    sget-object v2, Lcom/eltechs/axs/KeyCodesX;->KEY_X:Lcom/eltechs/axs/KeyCodesX;

    const/16 v3, 0x3bf

    invoke-direct {v1, p0, v2, v3}, Lcom/eltechs/axs/Keyboard$XKey;-><init>(Lcom/eltechs/axs/Keyboard;Lcom/eltechs/axs/KeyCodesX;I)V

    const/16 v2, 0x14b

    aput-object v1, v0, v2

    .line 536
    iget-object v0, p0, Lcom/eltechs/axs/Keyboard;->UnicodeToXKeyMap:[Lcom/eltechs/axs/Keyboard$XKey;

    new-instance v1, Lcom/eltechs/axs/Keyboard$XKey;

    sget-object v2, Lcom/eltechs/axs/KeyCodesX;->KEY_Y:Lcom/eltechs/axs/KeyCodesX;

    const/16 v3, 0x3d2

    invoke-direct {v1, p0, v2, v3}, Lcom/eltechs/axs/Keyboard$XKey;-><init>(Lcom/eltechs/axs/Keyboard;Lcom/eltechs/axs/KeyCodesX;I)V

    const/16 v2, 0x14c

    aput-object v1, v0, v2

    .line 537
    iget-object v0, p0, Lcom/eltechs/axs/Keyboard;->UnicodeToXKeyMap:[Lcom/eltechs/axs/Keyboard$XKey;

    new-instance v1, Lcom/eltechs/axs/Keyboard$XKey;

    sget-object v2, Lcom/eltechs/axs/KeyCodesX;->KEY_Z:Lcom/eltechs/axs/KeyCodesX;

    const/16 v3, 0x3f2

    invoke-direct {v1, p0, v2, v3}, Lcom/eltechs/axs/Keyboard$XKey;-><init>(Lcom/eltechs/axs/Keyboard;Lcom/eltechs/axs/KeyCodesX;I)V

    const/16 v2, 0x14d

    aput-object v1, v0, v2

    .line 538
    iget-object v0, p0, Lcom/eltechs/axs/Keyboard;->UnicodeToXKeyMap:[Lcom/eltechs/axs/Keyboard$XKey;

    new-instance v1, Lcom/eltechs/axs/Keyboard$XKey;

    sget-object v2, Lcom/eltechs/axs/KeyCodesX;->KEY_A:Lcom/eltechs/axs/KeyCodesX;

    const/16 v3, 0x1d5

    invoke-direct {v1, p0, v2, v3}, Lcom/eltechs/axs/Keyboard$XKey;-><init>(Lcom/eltechs/axs/Keyboard;Lcom/eltechs/axs/KeyCodesX;I)V

    const/16 v2, 0x150

    aput-object v1, v0, v2

    .line 539
    iget-object v0, p0, Lcom/eltechs/axs/Keyboard;->UnicodeToXKeyMap:[Lcom/eltechs/axs/Keyboard$XKey;

    new-instance v1, Lcom/eltechs/axs/Keyboard$XKey;

    sget-object v2, Lcom/eltechs/axs/KeyCodesX;->KEY_B:Lcom/eltechs/axs/KeyCodesX;

    const/16 v3, 0x1f5

    invoke-direct {v1, p0, v2, v3}, Lcom/eltechs/axs/Keyboard$XKey;-><init>(Lcom/eltechs/axs/Keyboard;Lcom/eltechs/axs/KeyCodesX;I)V

    const/16 v2, 0x151

    aput-object v1, v0, v2

    .line 540
    iget-object v0, p0, Lcom/eltechs/axs/Keyboard;->UnicodeToXKeyMap:[Lcom/eltechs/axs/Keyboard$XKey;

    new-instance v1, Lcom/eltechs/axs/Keyboard$XKey;

    sget-object v2, Lcom/eltechs/axs/KeyCodesX;->KEY_C:Lcom/eltechs/axs/KeyCodesX;

    const/16 v3, 0x13bc

    invoke-direct {v1, p0, v2, v3}, Lcom/eltechs/axs/Keyboard$XKey;-><init>(Lcom/eltechs/axs/Keyboard;Lcom/eltechs/axs/KeyCodesX;I)V

    const/16 v2, 0x152

    aput-object v1, v0, v2

    .line 541
    iget-object v0, p0, Lcom/eltechs/axs/Keyboard;->UnicodeToXKeyMap:[Lcom/eltechs/axs/Keyboard$XKey;

    new-instance v1, Lcom/eltechs/axs/Keyboard$XKey;

    sget-object v2, Lcom/eltechs/axs/KeyCodesX;->KEY_D:Lcom/eltechs/axs/KeyCodesX;

    const/16 v3, 0x13bd

    invoke-direct {v1, p0, v2, v3}, Lcom/eltechs/axs/Keyboard$XKey;-><init>(Lcom/eltechs/axs/Keyboard;Lcom/eltechs/axs/KeyCodesX;I)V

    const/16 v2, 0x153

    aput-object v1, v0, v2

    .line 542
    iget-object v0, p0, Lcom/eltechs/axs/Keyboard;->UnicodeToXKeyMap:[Lcom/eltechs/axs/Keyboard$XKey;

    new-instance v1, Lcom/eltechs/axs/Keyboard$XKey;

    sget-object v2, Lcom/eltechs/axs/KeyCodesX;->KEY_E:Lcom/eltechs/axs/KeyCodesX;

    const/16 v3, 0x1c0

    invoke-direct {v1, p0, v2, v3}, Lcom/eltechs/axs/Keyboard$XKey;-><init>(Lcom/eltechs/axs/Keyboard;Lcom/eltechs/axs/KeyCodesX;I)V

    const/16 v2, 0x154

    aput-object v1, v0, v2

    .line 543
    iget-object v0, p0, Lcom/eltechs/axs/Keyboard;->UnicodeToXKeyMap:[Lcom/eltechs/axs/Keyboard$XKey;

    new-instance v1, Lcom/eltechs/axs/Keyboard$XKey;

    sget-object v2, Lcom/eltechs/axs/KeyCodesX;->KEY_F:Lcom/eltechs/axs/KeyCodesX;

    const/16 v3, 0x1e0

    invoke-direct {v1, p0, v2, v3}, Lcom/eltechs/axs/Keyboard$XKey;-><init>(Lcom/eltechs/axs/Keyboard;Lcom/eltechs/axs/KeyCodesX;I)V

    const/16 v2, 0x155

    aput-object v1, v0, v2

    .line 544
    iget-object v0, p0, Lcom/eltechs/axs/Keyboard;->UnicodeToXKeyMap:[Lcom/eltechs/axs/Keyboard$XKey;

    new-instance v1, Lcom/eltechs/axs/Keyboard$XKey;

    sget-object v2, Lcom/eltechs/axs/KeyCodesX;->KEY_G:Lcom/eltechs/axs/KeyCodesX;

    const/16 v3, 0x3a3

    invoke-direct {v1, p0, v2, v3}, Lcom/eltechs/axs/Keyboard$XKey;-><init>(Lcom/eltechs/axs/Keyboard;Lcom/eltechs/axs/KeyCodesX;I)V

    const/16 v2, 0x156

    aput-object v1, v0, v2

    .line 545
    iget-object v0, p0, Lcom/eltechs/axs/Keyboard;->UnicodeToXKeyMap:[Lcom/eltechs/axs/Keyboard$XKey;

    new-instance v1, Lcom/eltechs/axs/Keyboard$XKey;

    sget-object v2, Lcom/eltechs/axs/KeyCodesX;->KEY_H:Lcom/eltechs/axs/KeyCodesX;

    const/16 v3, 0x3b3

    invoke-direct {v1, p0, v2, v3}, Lcom/eltechs/axs/Keyboard$XKey;-><init>(Lcom/eltechs/axs/Keyboard;Lcom/eltechs/axs/KeyCodesX;I)V

    const/16 v2, 0x157

    aput-object v1, v0, v2

    .line 546
    iget-object v0, p0, Lcom/eltechs/axs/Keyboard;->UnicodeToXKeyMap:[Lcom/eltechs/axs/Keyboard$XKey;

    new-instance v1, Lcom/eltechs/axs/Keyboard$XKey;

    sget-object v2, Lcom/eltechs/axs/KeyCodesX;->KEY_I:Lcom/eltechs/axs/KeyCodesX;

    const/16 v3, 0x1d8

    invoke-direct {v1, p0, v2, v3}, Lcom/eltechs/axs/Keyboard$XKey;-><init>(Lcom/eltechs/axs/Keyboard;Lcom/eltechs/axs/KeyCodesX;I)V

    const/16 v2, 0x158

    aput-object v1, v0, v2

    .line 547
    iget-object v0, p0, Lcom/eltechs/axs/Keyboard;->UnicodeToXKeyMap:[Lcom/eltechs/axs/Keyboard$XKey;

    new-instance v1, Lcom/eltechs/axs/Keyboard$XKey;

    sget-object v2, Lcom/eltechs/axs/KeyCodesX;->KEY_J:Lcom/eltechs/axs/KeyCodesX;

    const/16 v3, 0x1f8

    invoke-direct {v1, p0, v2, v3}, Lcom/eltechs/axs/Keyboard$XKey;-><init>(Lcom/eltechs/axs/Keyboard;Lcom/eltechs/axs/KeyCodesX;I)V

    const/16 v2, 0x159

    aput-object v1, v0, v2

    .line 548
    iget-object v0, p0, Lcom/eltechs/axs/Keyboard;->UnicodeToXKeyMap:[Lcom/eltechs/axs/Keyboard$XKey;

    new-instance v1, Lcom/eltechs/axs/Keyboard$XKey;

    sget-object v2, Lcom/eltechs/axs/KeyCodesX;->KEY_K:Lcom/eltechs/axs/KeyCodesX;

    const/16 v3, 0x1a6

    invoke-direct {v1, p0, v2, v3}, Lcom/eltechs/axs/Keyboard$XKey;-><init>(Lcom/eltechs/axs/Keyboard;Lcom/eltechs/axs/KeyCodesX;I)V

    const/16 v2, 0x15a

    aput-object v1, v0, v2

    .line 549
    iget-object v0, p0, Lcom/eltechs/axs/Keyboard;->UnicodeToXKeyMap:[Lcom/eltechs/axs/Keyboard$XKey;

    new-instance v1, Lcom/eltechs/axs/Keyboard$XKey;

    sget-object v2, Lcom/eltechs/axs/KeyCodesX;->KEY_L:Lcom/eltechs/axs/KeyCodesX;

    const/16 v3, 0x1b6

    invoke-direct {v1, p0, v2, v3}, Lcom/eltechs/axs/Keyboard$XKey;-><init>(Lcom/eltechs/axs/Keyboard;Lcom/eltechs/axs/KeyCodesX;I)V

    const/16 v2, 0x15b

    aput-object v1, v0, v2

    .line 550
    iget-object v0, p0, Lcom/eltechs/axs/Keyboard;->UnicodeToXKeyMap:[Lcom/eltechs/axs/Keyboard$XKey;

    new-instance v1, Lcom/eltechs/axs/Keyboard$XKey;

    sget-object v2, Lcom/eltechs/axs/KeyCodesX;->KEY_M:Lcom/eltechs/axs/KeyCodesX;

    const/16 v3, 0x2de

    invoke-direct {v1, p0, v2, v3}, Lcom/eltechs/axs/Keyboard$XKey;-><init>(Lcom/eltechs/axs/Keyboard;Lcom/eltechs/axs/KeyCodesX;I)V

    const/16 v2, 0x15c

    aput-object v1, v0, v2

    .line 551
    iget-object v0, p0, Lcom/eltechs/axs/Keyboard;->UnicodeToXKeyMap:[Lcom/eltechs/axs/Keyboard$XKey;

    new-instance v1, Lcom/eltechs/axs/Keyboard$XKey;

    sget-object v2, Lcom/eltechs/axs/KeyCodesX;->KEY_N:Lcom/eltechs/axs/KeyCodesX;

    const/16 v3, 0x2fe

    invoke-direct {v1, p0, v2, v3}, Lcom/eltechs/axs/Keyboard$XKey;-><init>(Lcom/eltechs/axs/Keyboard;Lcom/eltechs/axs/KeyCodesX;I)V

    const/16 v2, 0x15d

    aput-object v1, v0, v2

    .line 552
    iget-object v0, p0, Lcom/eltechs/axs/Keyboard;->UnicodeToXKeyMap:[Lcom/eltechs/axs/Keyboard$XKey;

    new-instance v1, Lcom/eltechs/axs/Keyboard$XKey;

    sget-object v2, Lcom/eltechs/axs/KeyCodesX;->KEY_O:Lcom/eltechs/axs/KeyCodesX;

    const/16 v3, 0x1aa

    invoke-direct {v1, p0, v2, v3}, Lcom/eltechs/axs/Keyboard$XKey;-><init>(Lcom/eltechs/axs/Keyboard;Lcom/eltechs/axs/KeyCodesX;I)V

    const/16 v2, 0x15e

    aput-object v1, v0, v2

    .line 553
    iget-object v0, p0, Lcom/eltechs/axs/Keyboard;->UnicodeToXKeyMap:[Lcom/eltechs/axs/Keyboard$XKey;

    new-instance v1, Lcom/eltechs/axs/Keyboard$XKey;

    sget-object v2, Lcom/eltechs/axs/KeyCodesX;->KEY_P:Lcom/eltechs/axs/KeyCodesX;

    const/16 v3, 0x1ba

    invoke-direct {v1, p0, v2, v3}, Lcom/eltechs/axs/Keyboard$XKey;-><init>(Lcom/eltechs/axs/Keyboard;Lcom/eltechs/axs/KeyCodesX;I)V

    const/16 v2, 0x15f

    aput-object v1, v0, v2

    .line 554
    iget-object v0, p0, Lcom/eltechs/axs/Keyboard;->UnicodeToXKeyMap:[Lcom/eltechs/axs/Keyboard$XKey;

    new-instance v1, Lcom/eltechs/axs/Keyboard$XKey;

    sget-object v2, Lcom/eltechs/axs/KeyCodesX;->KEY_Q:Lcom/eltechs/axs/KeyCodesX;

    const/16 v3, 0x1a9

    invoke-direct {v1, p0, v2, v3}, Lcom/eltechs/axs/Keyboard$XKey;-><init>(Lcom/eltechs/axs/Keyboard;Lcom/eltechs/axs/KeyCodesX;I)V

    const/16 v2, 0x160

    aput-object v1, v0, v2

    .line 555
    iget-object v0, p0, Lcom/eltechs/axs/Keyboard;->UnicodeToXKeyMap:[Lcom/eltechs/axs/Keyboard$XKey;

    new-instance v1, Lcom/eltechs/axs/Keyboard$XKey;

    sget-object v2, Lcom/eltechs/axs/KeyCodesX;->KEY_R:Lcom/eltechs/axs/KeyCodesX;

    const/16 v3, 0x1b9

    invoke-direct {v1, p0, v2, v3}, Lcom/eltechs/axs/Keyboard$XKey;-><init>(Lcom/eltechs/axs/Keyboard;Lcom/eltechs/axs/KeyCodesX;I)V

    const/16 v2, 0x161

    aput-object v1, v0, v2

    .line 556
    iget-object v0, p0, Lcom/eltechs/axs/Keyboard;->UnicodeToXKeyMap:[Lcom/eltechs/axs/Keyboard$XKey;

    new-instance v1, Lcom/eltechs/axs/Keyboard$XKey;

    sget-object v2, Lcom/eltechs/axs/KeyCodesX;->KEY_S:Lcom/eltechs/axs/KeyCodesX;

    const/16 v3, 0x1de

    invoke-direct {v1, p0, v2, v3}, Lcom/eltechs/axs/Keyboard$XKey;-><init>(Lcom/eltechs/axs/Keyboard;Lcom/eltechs/axs/KeyCodesX;I)V

    const/16 v2, 0x162

    aput-object v1, v0, v2

    .line 557
    iget-object v0, p0, Lcom/eltechs/axs/Keyboard;->UnicodeToXKeyMap:[Lcom/eltechs/axs/Keyboard$XKey;

    new-instance v1, Lcom/eltechs/axs/Keyboard$XKey;

    sget-object v2, Lcom/eltechs/axs/KeyCodesX;->KEY_T:Lcom/eltechs/axs/KeyCodesX;

    const/16 v3, 0x1fe

    invoke-direct {v1, p0, v2, v3}, Lcom/eltechs/axs/Keyboard$XKey;-><init>(Lcom/eltechs/axs/Keyboard;Lcom/eltechs/axs/KeyCodesX;I)V

    const/16 v2, 0x163

    aput-object v1, v0, v2

    .line 558
    iget-object v0, p0, Lcom/eltechs/axs/Keyboard;->UnicodeToXKeyMap:[Lcom/eltechs/axs/Keyboard$XKey;

    new-instance v1, Lcom/eltechs/axs/Keyboard$XKey;

    sget-object v2, Lcom/eltechs/axs/KeyCodesX;->KEY_U:Lcom/eltechs/axs/KeyCodesX;

    const/16 v3, 0x1ab

    invoke-direct {v1, p0, v2, v3}, Lcom/eltechs/axs/Keyboard$XKey;-><init>(Lcom/eltechs/axs/Keyboard;Lcom/eltechs/axs/KeyCodesX;I)V

    const/16 v2, 0x164

    aput-object v1, v0, v2

    .line 559
    iget-object v0, p0, Lcom/eltechs/axs/Keyboard;->UnicodeToXKeyMap:[Lcom/eltechs/axs/Keyboard$XKey;

    new-instance v1, Lcom/eltechs/axs/Keyboard$XKey;

    sget-object v2, Lcom/eltechs/axs/KeyCodesX;->KEY_V:Lcom/eltechs/axs/KeyCodesX;

    const/16 v3, 0x1bb

    invoke-direct {v1, p0, v2, v3}, Lcom/eltechs/axs/Keyboard$XKey;-><init>(Lcom/eltechs/axs/Keyboard;Lcom/eltechs/axs/KeyCodesX;I)V

    const/16 v2, 0x165

    aput-object v1, v0, v2

    .line 560
    iget-object v0, p0, Lcom/eltechs/axs/Keyboard;->UnicodeToXKeyMap:[Lcom/eltechs/axs/Keyboard$XKey;

    new-instance v1, Lcom/eltechs/axs/Keyboard$XKey;

    sget-object v2, Lcom/eltechs/axs/KeyCodesX;->KEY_W:Lcom/eltechs/axs/KeyCodesX;

    const/16 v3, 0x3ac

    invoke-direct {v1, p0, v2, v3}, Lcom/eltechs/axs/Keyboard$XKey;-><init>(Lcom/eltechs/axs/Keyboard;Lcom/eltechs/axs/KeyCodesX;I)V

    const/16 v2, 0x166

    aput-object v1, v0, v2

    .line 561
    iget-object v0, p0, Lcom/eltechs/axs/Keyboard;->UnicodeToXKeyMap:[Lcom/eltechs/axs/Keyboard$XKey;

    new-instance v1, Lcom/eltechs/axs/Keyboard$XKey;

    sget-object v2, Lcom/eltechs/axs/KeyCodesX;->KEY_X:Lcom/eltechs/axs/KeyCodesX;

    const/16 v3, 0x3bc

    invoke-direct {v1, p0, v2, v3}, Lcom/eltechs/axs/Keyboard$XKey;-><init>(Lcom/eltechs/axs/Keyboard;Lcom/eltechs/axs/KeyCodesX;I)V

    const/16 v2, 0x167

    aput-object v1, v0, v2

    .line 562
    iget-object v0, p0, Lcom/eltechs/axs/Keyboard;->UnicodeToXKeyMap:[Lcom/eltechs/axs/Keyboard$XKey;

    new-instance v1, Lcom/eltechs/axs/Keyboard$XKey;

    sget-object v2, Lcom/eltechs/axs/KeyCodesX;->KEY_Y:Lcom/eltechs/axs/KeyCodesX;

    const/16 v3, 0x3dd

    invoke-direct {v1, p0, v2, v3}, Lcom/eltechs/axs/Keyboard$XKey;-><init>(Lcom/eltechs/axs/Keyboard;Lcom/eltechs/axs/KeyCodesX;I)V

    const/16 v2, 0x168

    aput-object v1, v0, v2

    .line 563
    iget-object v0, p0, Lcom/eltechs/axs/Keyboard;->UnicodeToXKeyMap:[Lcom/eltechs/axs/Keyboard$XKey;

    new-instance v1, Lcom/eltechs/axs/Keyboard$XKey;

    sget-object v2, Lcom/eltechs/axs/KeyCodesX;->KEY_Z:Lcom/eltechs/axs/KeyCodesX;

    const/16 v3, 0x3fd

    invoke-direct {v1, p0, v2, v3}, Lcom/eltechs/axs/Keyboard$XKey;-><init>(Lcom/eltechs/axs/Keyboard;Lcom/eltechs/axs/KeyCodesX;I)V

    const/16 v2, 0x169

    aput-object v1, v0, v2

    .line 564
    iget-object v0, p0, Lcom/eltechs/axs/Keyboard;->UnicodeToXKeyMap:[Lcom/eltechs/axs/Keyboard$XKey;

    new-instance v1, Lcom/eltechs/axs/Keyboard$XKey;

    sget-object v2, Lcom/eltechs/axs/KeyCodesX;->KEY_A:Lcom/eltechs/axs/KeyCodesX;

    const/16 v3, 0x3de

    invoke-direct {v1, p0, v2, v3}, Lcom/eltechs/axs/Keyboard$XKey;-><init>(Lcom/eltechs/axs/Keyboard;Lcom/eltechs/axs/KeyCodesX;I)V

    const/16 v2, 0x16a

    aput-object v1, v0, v2

    .line 565
    iget-object v0, p0, Lcom/eltechs/axs/Keyboard;->UnicodeToXKeyMap:[Lcom/eltechs/axs/Keyboard$XKey;

    new-instance v1, Lcom/eltechs/axs/Keyboard$XKey;

    sget-object v2, Lcom/eltechs/axs/KeyCodesX;->KEY_B:Lcom/eltechs/axs/KeyCodesX;

    const/16 v3, 0x3fe

    invoke-direct {v1, p0, v2, v3}, Lcom/eltechs/axs/Keyboard$XKey;-><init>(Lcom/eltechs/axs/Keyboard;Lcom/eltechs/axs/KeyCodesX;I)V

    const/16 v2, 0x16b

    aput-object v1, v0, v2

    .line 566
    iget-object v0, p0, Lcom/eltechs/axs/Keyboard;->UnicodeToXKeyMap:[Lcom/eltechs/axs/Keyboard$XKey;

    new-instance v1, Lcom/eltechs/axs/Keyboard$XKey;

    sget-object v2, Lcom/eltechs/axs/KeyCodesX;->KEY_C:Lcom/eltechs/axs/KeyCodesX;

    const/16 v3, 0x2dd

    invoke-direct {v1, p0, v2, v3}, Lcom/eltechs/axs/Keyboard$XKey;-><init>(Lcom/eltechs/axs/Keyboard;Lcom/eltechs/axs/KeyCodesX;I)V

    const/16 v2, 0x16c

    aput-object v1, v0, v2

    .line 567
    iget-object v0, p0, Lcom/eltechs/axs/Keyboard;->UnicodeToXKeyMap:[Lcom/eltechs/axs/Keyboard$XKey;

    new-instance v1, Lcom/eltechs/axs/Keyboard$XKey;

    sget-object v2, Lcom/eltechs/axs/KeyCodesX;->KEY_D:Lcom/eltechs/axs/KeyCodesX;

    const/16 v3, 0x2fd

    invoke-direct {v1, p0, v2, v3}, Lcom/eltechs/axs/Keyboard$XKey;-><init>(Lcom/eltechs/axs/Keyboard;Lcom/eltechs/axs/KeyCodesX;I)V

    const/16 v2, 0x16d

    aput-object v1, v0, v2

    .line 568
    iget-object v0, p0, Lcom/eltechs/axs/Keyboard;->UnicodeToXKeyMap:[Lcom/eltechs/axs/Keyboard$XKey;

    new-instance v1, Lcom/eltechs/axs/Keyboard$XKey;

    sget-object v2, Lcom/eltechs/axs/KeyCodesX;->KEY_E:Lcom/eltechs/axs/KeyCodesX;

    const/16 v3, 0x1d9

    invoke-direct {v1, p0, v2, v3}, Lcom/eltechs/axs/Keyboard$XKey;-><init>(Lcom/eltechs/axs/Keyboard;Lcom/eltechs/axs/KeyCodesX;I)V

    const/16 v2, 0x16e

    aput-object v1, v0, v2

    .line 569
    iget-object v0, p0, Lcom/eltechs/axs/Keyboard;->UnicodeToXKeyMap:[Lcom/eltechs/axs/Keyboard$XKey;

    new-instance v1, Lcom/eltechs/axs/Keyboard$XKey;

    sget-object v2, Lcom/eltechs/axs/KeyCodesX;->KEY_F:Lcom/eltechs/axs/KeyCodesX;

    const/16 v3, 0x1f9

    invoke-direct {v1, p0, v2, v3}, Lcom/eltechs/axs/Keyboard$XKey;-><init>(Lcom/eltechs/axs/Keyboard;Lcom/eltechs/axs/KeyCodesX;I)V

    const/16 v2, 0x16f

    aput-object v1, v0, v2

    .line 570
    iget-object v0, p0, Lcom/eltechs/axs/Keyboard;->UnicodeToXKeyMap:[Lcom/eltechs/axs/Keyboard$XKey;

    new-instance v1, Lcom/eltechs/axs/Keyboard$XKey;

    sget-object v2, Lcom/eltechs/axs/KeyCodesX;->KEY_G:Lcom/eltechs/axs/KeyCodesX;

    const/16 v3, 0x1db

    invoke-direct {v1, p0, v2, v3}, Lcom/eltechs/axs/Keyboard$XKey;-><init>(Lcom/eltechs/axs/Keyboard;Lcom/eltechs/axs/KeyCodesX;I)V

    const/16 v2, 0x170

    aput-object v1, v0, v2

    .line 571
    iget-object v0, p0, Lcom/eltechs/axs/Keyboard;->UnicodeToXKeyMap:[Lcom/eltechs/axs/Keyboard$XKey;

    new-instance v1, Lcom/eltechs/axs/Keyboard$XKey;

    sget-object v2, Lcom/eltechs/axs/KeyCodesX;->KEY_H:Lcom/eltechs/axs/KeyCodesX;

    const/16 v3, 0x1fb

    invoke-direct {v1, p0, v2, v3}, Lcom/eltechs/axs/Keyboard$XKey;-><init>(Lcom/eltechs/axs/Keyboard;Lcom/eltechs/axs/KeyCodesX;I)V

    const/16 v2, 0x171

    aput-object v1, v0, v2

    .line 572
    iget-object v0, p0, Lcom/eltechs/axs/Keyboard;->UnicodeToXKeyMap:[Lcom/eltechs/axs/Keyboard$XKey;

    new-instance v1, Lcom/eltechs/axs/Keyboard$XKey;

    sget-object v2, Lcom/eltechs/axs/KeyCodesX;->KEY_I:Lcom/eltechs/axs/KeyCodesX;

    const/16 v3, 0x3d9

    invoke-direct {v1, p0, v2, v3}, Lcom/eltechs/axs/Keyboard$XKey;-><init>(Lcom/eltechs/axs/Keyboard;Lcom/eltechs/axs/KeyCodesX;I)V

    const/16 v2, 0x172

    aput-object v1, v0, v2

    .line 573
    iget-object v0, p0, Lcom/eltechs/axs/Keyboard;->UnicodeToXKeyMap:[Lcom/eltechs/axs/Keyboard$XKey;

    new-instance v1, Lcom/eltechs/axs/Keyboard$XKey;

    sget-object v2, Lcom/eltechs/axs/KeyCodesX;->KEY_J:Lcom/eltechs/axs/KeyCodesX;

    const/16 v3, 0x3f9

    invoke-direct {v1, p0, v2, v3}, Lcom/eltechs/axs/Keyboard$XKey;-><init>(Lcom/eltechs/axs/Keyboard;Lcom/eltechs/axs/KeyCodesX;I)V

    const/16 v2, 0x173

    aput-object v1, v0, v2

    .line 574
    iget-object v0, p0, Lcom/eltechs/axs/Keyboard;->UnicodeToXKeyMap:[Lcom/eltechs/axs/Keyboard$XKey;

    new-instance v1, Lcom/eltechs/axs/Keyboard$XKey;

    sget-object v2, Lcom/eltechs/axs/KeyCodesX;->KEY_K:Lcom/eltechs/axs/KeyCodesX;

    const/16 v3, 0x13be

    invoke-direct {v1, p0, v2, v3}, Lcom/eltechs/axs/Keyboard$XKey;-><init>(Lcom/eltechs/axs/Keyboard;Lcom/eltechs/axs/KeyCodesX;I)V

    const/16 v2, 0x178

    aput-object v1, v0, v2

    .line 575
    iget-object v0, p0, Lcom/eltechs/axs/Keyboard;->UnicodeToXKeyMap:[Lcom/eltechs/axs/Keyboard$XKey;

    new-instance v1, Lcom/eltechs/axs/Keyboard$XKey;

    sget-object v2, Lcom/eltechs/axs/KeyCodesX;->KEY_L:Lcom/eltechs/axs/KeyCodesX;

    const/16 v3, 0x1ac

    invoke-direct {v1, p0, v2, v3}, Lcom/eltechs/axs/Keyboard$XKey;-><init>(Lcom/eltechs/axs/Keyboard;Lcom/eltechs/axs/KeyCodesX;I)V

    const/16 v2, 0x179

    aput-object v1, v0, v2

    .line 576
    iget-object v0, p0, Lcom/eltechs/axs/Keyboard;->UnicodeToXKeyMap:[Lcom/eltechs/axs/Keyboard$XKey;

    new-instance v1, Lcom/eltechs/axs/Keyboard$XKey;

    sget-object v2, Lcom/eltechs/axs/KeyCodesX;->KEY_M:Lcom/eltechs/axs/KeyCodesX;

    const/16 v3, 0x1bc

    invoke-direct {v1, p0, v2, v3}, Lcom/eltechs/axs/Keyboard$XKey;-><init>(Lcom/eltechs/axs/Keyboard;Lcom/eltechs/axs/KeyCodesX;I)V

    const/16 v2, 0x17a

    aput-object v1, v0, v2

    .line 577
    iget-object v0, p0, Lcom/eltechs/axs/Keyboard;->UnicodeToXKeyMap:[Lcom/eltechs/axs/Keyboard$XKey;

    new-instance v1, Lcom/eltechs/axs/Keyboard$XKey;

    sget-object v2, Lcom/eltechs/axs/KeyCodesX;->KEY_N:Lcom/eltechs/axs/KeyCodesX;

    const/16 v3, 0x1af

    invoke-direct {v1, p0, v2, v3}, Lcom/eltechs/axs/Keyboard$XKey;-><init>(Lcom/eltechs/axs/Keyboard;Lcom/eltechs/axs/KeyCodesX;I)V

    const/16 v2, 0x17b

    aput-object v1, v0, v2

    .line 578
    iget-object v0, p0, Lcom/eltechs/axs/Keyboard;->UnicodeToXKeyMap:[Lcom/eltechs/axs/Keyboard$XKey;

    new-instance v1, Lcom/eltechs/axs/Keyboard$XKey;

    sget-object v2, Lcom/eltechs/axs/KeyCodesX;->KEY_O:Lcom/eltechs/axs/KeyCodesX;

    const/16 v3, 0x1bf

    invoke-direct {v1, p0, v2, v3}, Lcom/eltechs/axs/Keyboard$XKey;-><init>(Lcom/eltechs/axs/Keyboard;Lcom/eltechs/axs/KeyCodesX;I)V

    const/16 v2, 0x17c

    aput-object v1, v0, v2

    .line 579
    iget-object v0, p0, Lcom/eltechs/axs/Keyboard;->UnicodeToXKeyMap:[Lcom/eltechs/axs/Keyboard$XKey;

    new-instance v1, Lcom/eltechs/axs/Keyboard$XKey;

    sget-object v2, Lcom/eltechs/axs/KeyCodesX;->KEY_P:Lcom/eltechs/axs/KeyCodesX;

    const/16 v3, 0x1ae

    invoke-direct {v1, p0, v2, v3}, Lcom/eltechs/axs/Keyboard$XKey;-><init>(Lcom/eltechs/axs/Keyboard;Lcom/eltechs/axs/KeyCodesX;I)V

    const/16 v2, 0x17d

    aput-object v1, v0, v2

    .line 580
    iget-object v0, p0, Lcom/eltechs/axs/Keyboard;->UnicodeToXKeyMap:[Lcom/eltechs/axs/Keyboard$XKey;

    new-instance v1, Lcom/eltechs/axs/Keyboard$XKey;

    sget-object v2, Lcom/eltechs/axs/KeyCodesX;->KEY_Q:Lcom/eltechs/axs/KeyCodesX;

    const/16 v3, 0x1be

    invoke-direct {v1, p0, v2, v3}, Lcom/eltechs/axs/Keyboard$XKey;-><init>(Lcom/eltechs/axs/Keyboard;Lcom/eltechs/axs/KeyCodesX;I)V

    const/16 v2, 0x17e

    aput-object v1, v0, v2

    .line 581
    iget-object v0, p0, Lcom/eltechs/axs/Keyboard;->UnicodeToXKeyMap:[Lcom/eltechs/axs/Keyboard$XKey;

    new-instance v1, Lcom/eltechs/axs/Keyboard$XKey;

    sget-object v2, Lcom/eltechs/axs/KeyCodesX;->KEY_R:Lcom/eltechs/axs/KeyCodesX;

    const/16 v3, 0x8f6

    invoke-direct {v1, p0, v2, v3}, Lcom/eltechs/axs/Keyboard$XKey;-><init>(Lcom/eltechs/axs/Keyboard;Lcom/eltechs/axs/KeyCodesX;I)V

    const/16 v2, 0x192

    aput-object v1, v0, v2

    .line 582
    iget-object v0, p0, Lcom/eltechs/axs/Keyboard;->UnicodeToXKeyMap:[Lcom/eltechs/axs/Keyboard$XKey;

    new-instance v1, Lcom/eltechs/axs/Keyboard$XKey;

    sget-object v2, Lcom/eltechs/axs/KeyCodesX;->KEY_S:Lcom/eltechs/axs/KeyCodesX;

    const/16 v3, 0x1b7

    invoke-direct {v1, p0, v2, v3}, Lcom/eltechs/axs/Keyboard$XKey;-><init>(Lcom/eltechs/axs/Keyboard;Lcom/eltechs/axs/KeyCodesX;I)V

    const/16 v2, 0x2c7

    aput-object v1, v0, v2

    .line 583
    iget-object v0, p0, Lcom/eltechs/axs/Keyboard;->UnicodeToXKeyMap:[Lcom/eltechs/axs/Keyboard$XKey;

    new-instance v1, Lcom/eltechs/axs/Keyboard$XKey;

    sget-object v2, Lcom/eltechs/axs/KeyCodesX;->KEY_T:Lcom/eltechs/axs/KeyCodesX;

    const/16 v3, 0x1a2

    invoke-direct {v1, p0, v2, v3}, Lcom/eltechs/axs/Keyboard$XKey;-><init>(Lcom/eltechs/axs/Keyboard;Lcom/eltechs/axs/KeyCodesX;I)V

    const/16 v2, 0x2d8

    aput-object v1, v0, v2

    .line 584
    iget-object v0, p0, Lcom/eltechs/axs/Keyboard;->UnicodeToXKeyMap:[Lcom/eltechs/axs/Keyboard$XKey;

    new-instance v1, Lcom/eltechs/axs/Keyboard$XKey;

    sget-object v2, Lcom/eltechs/axs/KeyCodesX;->KEY_U:Lcom/eltechs/axs/KeyCodesX;

    const/16 v3, 0x1ff

    invoke-direct {v1, p0, v2, v3}, Lcom/eltechs/axs/Keyboard$XKey;-><init>(Lcom/eltechs/axs/Keyboard;Lcom/eltechs/axs/KeyCodesX;I)V

    const/16 v2, 0x2d9

    aput-object v1, v0, v2

    .line 585
    iget-object v0, p0, Lcom/eltechs/axs/Keyboard;->UnicodeToXKeyMap:[Lcom/eltechs/axs/Keyboard$XKey;

    new-instance v1, Lcom/eltechs/axs/Keyboard$XKey;

    sget-object v2, Lcom/eltechs/axs/KeyCodesX;->KEY_V:Lcom/eltechs/axs/KeyCodesX;

    const/16 v3, 0x1b2

    invoke-direct {v1, p0, v2, v3}, Lcom/eltechs/axs/Keyboard$XKey;-><init>(Lcom/eltechs/axs/Keyboard;Lcom/eltechs/axs/KeyCodesX;I)V

    const/16 v2, 0x2db

    aput-object v1, v0, v2

    .line 586
    iget-object v0, p0, Lcom/eltechs/axs/Keyboard;->UnicodeToXKeyMap:[Lcom/eltechs/axs/Keyboard$XKey;

    new-instance v1, Lcom/eltechs/axs/Keyboard$XKey;

    sget-object v2, Lcom/eltechs/axs/KeyCodesX;->KEY_W:Lcom/eltechs/axs/KeyCodesX;

    const/16 v3, 0x1bd

    invoke-direct {v1, p0, v2, v3}, Lcom/eltechs/axs/Keyboard$XKey;-><init>(Lcom/eltechs/axs/Keyboard;Lcom/eltechs/axs/KeyCodesX;I)V

    const/16 v2, 0x2dd

    aput-object v1, v0, v2

    .line 587
    iget-object v0, p0, Lcom/eltechs/axs/Keyboard;->UnicodeToXKeyMap:[Lcom/eltechs/axs/Keyboard$XKey;

    new-instance v1, Lcom/eltechs/axs/Keyboard$XKey;

    sget-object v2, Lcom/eltechs/axs/KeyCodesX;->KEY_X:Lcom/eltechs/axs/KeyCodesX;

    const/16 v3, 0x7ae

    invoke-direct {v1, p0, v2, v3}, Lcom/eltechs/axs/Keyboard$XKey;-><init>(Lcom/eltechs/axs/Keyboard;Lcom/eltechs/axs/KeyCodesX;I)V

    const/16 v2, 0x385

    aput-object v1, v0, v2

    .line 588
    iget-object v0, p0, Lcom/eltechs/axs/Keyboard;->UnicodeToXKeyMap:[Lcom/eltechs/axs/Keyboard$XKey;

    new-instance v1, Lcom/eltechs/axs/Keyboard$XKey;

    sget-object v2, Lcom/eltechs/axs/KeyCodesX;->KEY_Y:Lcom/eltechs/axs/KeyCodesX;

    const/16 v3, 0x7a1

    invoke-direct {v1, p0, v2, v3}, Lcom/eltechs/axs/Keyboard$XKey;-><init>(Lcom/eltechs/axs/Keyboard;Lcom/eltechs/axs/KeyCodesX;I)V

    const/16 v2, 0x386

    aput-object v1, v0, v2

    .line 589
    iget-object v0, p0, Lcom/eltechs/axs/Keyboard;->UnicodeToXKeyMap:[Lcom/eltechs/axs/Keyboard$XKey;

    new-instance v1, Lcom/eltechs/axs/Keyboard$XKey;

    sget-object v2, Lcom/eltechs/axs/KeyCodesX;->KEY_Z:Lcom/eltechs/axs/KeyCodesX;

    const/16 v3, 0x7a2

    invoke-direct {v1, p0, v2, v3}, Lcom/eltechs/axs/Keyboard$XKey;-><init>(Lcom/eltechs/axs/Keyboard;Lcom/eltechs/axs/KeyCodesX;I)V

    const/16 v2, 0x388

    aput-object v1, v0, v2

    .line 590
    iget-object v0, p0, Lcom/eltechs/axs/Keyboard;->UnicodeToXKeyMap:[Lcom/eltechs/axs/Keyboard$XKey;

    new-instance v1, Lcom/eltechs/axs/Keyboard$XKey;

    sget-object v2, Lcom/eltechs/axs/KeyCodesX;->KEY_A:Lcom/eltechs/axs/KeyCodesX;

    const/16 v3, 0x7a3

    invoke-direct {v1, p0, v2, v3}, Lcom/eltechs/axs/Keyboard$XKey;-><init>(Lcom/eltechs/axs/Keyboard;Lcom/eltechs/axs/KeyCodesX;I)V

    const/16 v2, 0x389

    aput-object v1, v0, v2

    .line 591
    iget-object v0, p0, Lcom/eltechs/axs/Keyboard;->UnicodeToXKeyMap:[Lcom/eltechs/axs/Keyboard$XKey;

    new-instance v1, Lcom/eltechs/axs/Keyboard$XKey;

    sget-object v2, Lcom/eltechs/axs/KeyCodesX;->KEY_B:Lcom/eltechs/axs/KeyCodesX;

    const/16 v3, 0x7a4

    invoke-direct {v1, p0, v2, v3}, Lcom/eltechs/axs/Keyboard$XKey;-><init>(Lcom/eltechs/axs/Keyboard;Lcom/eltechs/axs/KeyCodesX;I)V

    const/16 v2, 0x38a

    aput-object v1, v0, v2

    .line 592
    iget-object v0, p0, Lcom/eltechs/axs/Keyboard;->UnicodeToXKeyMap:[Lcom/eltechs/axs/Keyboard$XKey;

    new-instance v1, Lcom/eltechs/axs/Keyboard$XKey;

    sget-object v2, Lcom/eltechs/axs/KeyCodesX;->KEY_C:Lcom/eltechs/axs/KeyCodesX;

    const/16 v3, 0x7a7

    invoke-direct {v1, p0, v2, v3}, Lcom/eltechs/axs/Keyboard$XKey;-><init>(Lcom/eltechs/axs/Keyboard;Lcom/eltechs/axs/KeyCodesX;I)V

    const/16 v2, 0x38c

    aput-object v1, v0, v2

    .line 593
    iget-object v0, p0, Lcom/eltechs/axs/Keyboard;->UnicodeToXKeyMap:[Lcom/eltechs/axs/Keyboard$XKey;

    new-instance v1, Lcom/eltechs/axs/Keyboard$XKey;

    sget-object v2, Lcom/eltechs/axs/KeyCodesX;->KEY_D:Lcom/eltechs/axs/KeyCodesX;

    const/16 v3, 0x7a8

    invoke-direct {v1, p0, v2, v3}, Lcom/eltechs/axs/Keyboard$XKey;-><init>(Lcom/eltechs/axs/Keyboard;Lcom/eltechs/axs/KeyCodesX;I)V

    const/16 v2, 0x38e

    aput-object v1, v0, v2

    .line 594
    iget-object v0, p0, Lcom/eltechs/axs/Keyboard;->UnicodeToXKeyMap:[Lcom/eltechs/axs/Keyboard$XKey;

    new-instance v1, Lcom/eltechs/axs/Keyboard$XKey;

    sget-object v2, Lcom/eltechs/axs/KeyCodesX;->KEY_E:Lcom/eltechs/axs/KeyCodesX;

    const/16 v3, 0x7ab

    invoke-direct {v1, p0, v2, v3}, Lcom/eltechs/axs/Keyboard$XKey;-><init>(Lcom/eltechs/axs/Keyboard;Lcom/eltechs/axs/KeyCodesX;I)V

    const/16 v2, 0x38f

    aput-object v1, v0, v2

    .line 595
    iget-object v0, p0, Lcom/eltechs/axs/Keyboard;->UnicodeToXKeyMap:[Lcom/eltechs/axs/Keyboard$XKey;

    new-instance v1, Lcom/eltechs/axs/Keyboard$XKey;

    sget-object v2, Lcom/eltechs/axs/KeyCodesX;->KEY_F:Lcom/eltechs/axs/KeyCodesX;

    const/16 v3, 0x7b6

    invoke-direct {v1, p0, v2, v3}, Lcom/eltechs/axs/Keyboard$XKey;-><init>(Lcom/eltechs/axs/Keyboard;Lcom/eltechs/axs/KeyCodesX;I)V

    const/16 v2, 0x390

    aput-object v1, v0, v2

    .line 596
    iget-object v0, p0, Lcom/eltechs/axs/Keyboard;->UnicodeToXKeyMap:[Lcom/eltechs/axs/Keyboard$XKey;

    new-instance v1, Lcom/eltechs/axs/Keyboard$XKey;

    sget-object v2, Lcom/eltechs/axs/KeyCodesX;->KEY_G:Lcom/eltechs/axs/KeyCodesX;

    const/16 v3, 0x7c1

    invoke-direct {v1, p0, v2, v3}, Lcom/eltechs/axs/Keyboard$XKey;-><init>(Lcom/eltechs/axs/Keyboard;Lcom/eltechs/axs/KeyCodesX;I)V

    const/16 v2, 0x391

    aput-object v1, v0, v2

    .line 597
    iget-object v0, p0, Lcom/eltechs/axs/Keyboard;->UnicodeToXKeyMap:[Lcom/eltechs/axs/Keyboard$XKey;

    new-instance v1, Lcom/eltechs/axs/Keyboard$XKey;

    sget-object v2, Lcom/eltechs/axs/KeyCodesX;->KEY_H:Lcom/eltechs/axs/KeyCodesX;

    const/16 v3, 0x7c2

    invoke-direct {v1, p0, v2, v3}, Lcom/eltechs/axs/Keyboard$XKey;-><init>(Lcom/eltechs/axs/Keyboard;Lcom/eltechs/axs/KeyCodesX;I)V

    const/16 v2, 0x392

    aput-object v1, v0, v2

    .line 598
    iget-object v0, p0, Lcom/eltechs/axs/Keyboard;->UnicodeToXKeyMap:[Lcom/eltechs/axs/Keyboard$XKey;

    new-instance v1, Lcom/eltechs/axs/Keyboard$XKey;

    sget-object v2, Lcom/eltechs/axs/KeyCodesX;->KEY_I:Lcom/eltechs/axs/KeyCodesX;

    const/16 v3, 0x7c3

    invoke-direct {v1, p0, v2, v3}, Lcom/eltechs/axs/Keyboard$XKey;-><init>(Lcom/eltechs/axs/Keyboard;Lcom/eltechs/axs/KeyCodesX;I)V

    const/16 v2, 0x393

    aput-object v1, v0, v2

    .line 599
    iget-object v0, p0, Lcom/eltechs/axs/Keyboard;->UnicodeToXKeyMap:[Lcom/eltechs/axs/Keyboard$XKey;

    new-instance v1, Lcom/eltechs/axs/Keyboard$XKey;

    sget-object v2, Lcom/eltechs/axs/KeyCodesX;->KEY_J:Lcom/eltechs/axs/KeyCodesX;

    const/16 v3, 0x7c4

    invoke-direct {v1, p0, v2, v3}, Lcom/eltechs/axs/Keyboard$XKey;-><init>(Lcom/eltechs/axs/Keyboard;Lcom/eltechs/axs/KeyCodesX;I)V

    const/16 v2, 0x394

    aput-object v1, v0, v2

    .line 600
    iget-object v0, p0, Lcom/eltechs/axs/Keyboard;->UnicodeToXKeyMap:[Lcom/eltechs/axs/Keyboard$XKey;

    new-instance v1, Lcom/eltechs/axs/Keyboard$XKey;

    sget-object v2, Lcom/eltechs/axs/KeyCodesX;->KEY_K:Lcom/eltechs/axs/KeyCodesX;

    const/16 v3, 0x7c5

    invoke-direct {v1, p0, v2, v3}, Lcom/eltechs/axs/Keyboard$XKey;-><init>(Lcom/eltechs/axs/Keyboard;Lcom/eltechs/axs/KeyCodesX;I)V

    const/16 v2, 0x395

    aput-object v1, v0, v2

    .line 601
    iget-object v0, p0, Lcom/eltechs/axs/Keyboard;->UnicodeToXKeyMap:[Lcom/eltechs/axs/Keyboard$XKey;

    new-instance v1, Lcom/eltechs/axs/Keyboard$XKey;

    sget-object v2, Lcom/eltechs/axs/KeyCodesX;->KEY_L:Lcom/eltechs/axs/KeyCodesX;

    const/16 v3, 0x7c6

    invoke-direct {v1, p0, v2, v3}, Lcom/eltechs/axs/Keyboard$XKey;-><init>(Lcom/eltechs/axs/Keyboard;Lcom/eltechs/axs/KeyCodesX;I)V

    const/16 v2, 0x396

    aput-object v1, v0, v2

    .line 602
    iget-object v0, p0, Lcom/eltechs/axs/Keyboard;->UnicodeToXKeyMap:[Lcom/eltechs/axs/Keyboard$XKey;

    new-instance v1, Lcom/eltechs/axs/Keyboard$XKey;

    sget-object v2, Lcom/eltechs/axs/KeyCodesX;->KEY_M:Lcom/eltechs/axs/KeyCodesX;

    const/16 v3, 0x7c7

    invoke-direct {v1, p0, v2, v3}, Lcom/eltechs/axs/Keyboard$XKey;-><init>(Lcom/eltechs/axs/Keyboard;Lcom/eltechs/axs/KeyCodesX;I)V

    const/16 v2, 0x397

    aput-object v1, v0, v2

    .line 603
    iget-object v0, p0, Lcom/eltechs/axs/Keyboard;->UnicodeToXKeyMap:[Lcom/eltechs/axs/Keyboard$XKey;

    new-instance v1, Lcom/eltechs/axs/Keyboard$XKey;

    sget-object v2, Lcom/eltechs/axs/KeyCodesX;->KEY_N:Lcom/eltechs/axs/KeyCodesX;

    const/16 v3, 0x7c8

    invoke-direct {v1, p0, v2, v3}, Lcom/eltechs/axs/Keyboard$XKey;-><init>(Lcom/eltechs/axs/Keyboard;Lcom/eltechs/axs/KeyCodesX;I)V

    const/16 v2, 0x398

    aput-object v1, v0, v2

    .line 604
    iget-object v0, p0, Lcom/eltechs/axs/Keyboard;->UnicodeToXKeyMap:[Lcom/eltechs/axs/Keyboard$XKey;

    new-instance v1, Lcom/eltechs/axs/Keyboard$XKey;

    sget-object v2, Lcom/eltechs/axs/KeyCodesX;->KEY_O:Lcom/eltechs/axs/KeyCodesX;

    const/16 v3, 0x7c9

    invoke-direct {v1, p0, v2, v3}, Lcom/eltechs/axs/Keyboard$XKey;-><init>(Lcom/eltechs/axs/Keyboard;Lcom/eltechs/axs/KeyCodesX;I)V

    const/16 v2, 0x399

    aput-object v1, v0, v2

    .line 605
    iget-object v0, p0, Lcom/eltechs/axs/Keyboard;->UnicodeToXKeyMap:[Lcom/eltechs/axs/Keyboard$XKey;

    new-instance v1, Lcom/eltechs/axs/Keyboard$XKey;

    sget-object v2, Lcom/eltechs/axs/KeyCodesX;->KEY_P:Lcom/eltechs/axs/KeyCodesX;

    const/16 v3, 0x7ca

    invoke-direct {v1, p0, v2, v3}, Lcom/eltechs/axs/Keyboard$XKey;-><init>(Lcom/eltechs/axs/Keyboard;Lcom/eltechs/axs/KeyCodesX;I)V

    const/16 v2, 0x39a

    aput-object v1, v0, v2

    .line 606
    iget-object v0, p0, Lcom/eltechs/axs/Keyboard;->UnicodeToXKeyMap:[Lcom/eltechs/axs/Keyboard$XKey;

    new-instance v1, Lcom/eltechs/axs/Keyboard$XKey;

    sget-object v2, Lcom/eltechs/axs/KeyCodesX;->KEY_Q:Lcom/eltechs/axs/KeyCodesX;

    const/16 v3, 0x7cb

    invoke-direct {v1, p0, v2, v3}, Lcom/eltechs/axs/Keyboard$XKey;-><init>(Lcom/eltechs/axs/Keyboard;Lcom/eltechs/axs/KeyCodesX;I)V

    const/16 v2, 0x39b

    aput-object v1, v0, v2

    .line 607
    iget-object v0, p0, Lcom/eltechs/axs/Keyboard;->UnicodeToXKeyMap:[Lcom/eltechs/axs/Keyboard$XKey;

    new-instance v1, Lcom/eltechs/axs/Keyboard$XKey;

    sget-object v2, Lcom/eltechs/axs/KeyCodesX;->KEY_R:Lcom/eltechs/axs/KeyCodesX;

    const/16 v3, 0x7cc

    invoke-direct {v1, p0, v2, v3}, Lcom/eltechs/axs/Keyboard$XKey;-><init>(Lcom/eltechs/axs/Keyboard;Lcom/eltechs/axs/KeyCodesX;I)V

    const/16 v2, 0x39c

    aput-object v1, v0, v2

    .line 608
    iget-object v0, p0, Lcom/eltechs/axs/Keyboard;->UnicodeToXKeyMap:[Lcom/eltechs/axs/Keyboard$XKey;

    new-instance v1, Lcom/eltechs/axs/Keyboard$XKey;

    sget-object v2, Lcom/eltechs/axs/KeyCodesX;->KEY_S:Lcom/eltechs/axs/KeyCodesX;

    const/16 v3, 0x7cd

    invoke-direct {v1, p0, v2, v3}, Lcom/eltechs/axs/Keyboard$XKey;-><init>(Lcom/eltechs/axs/Keyboard;Lcom/eltechs/axs/KeyCodesX;I)V

    const/16 v2, 0x39d

    aput-object v1, v0, v2

    .line 609
    iget-object v0, p0, Lcom/eltechs/axs/Keyboard;->UnicodeToXKeyMap:[Lcom/eltechs/axs/Keyboard$XKey;

    new-instance v1, Lcom/eltechs/axs/Keyboard$XKey;

    sget-object v2, Lcom/eltechs/axs/KeyCodesX;->KEY_T:Lcom/eltechs/axs/KeyCodesX;

    const/16 v3, 0x7ce

    invoke-direct {v1, p0, v2, v3}, Lcom/eltechs/axs/Keyboard$XKey;-><init>(Lcom/eltechs/axs/Keyboard;Lcom/eltechs/axs/KeyCodesX;I)V

    const/16 v2, 0x39e

    aput-object v1, v0, v2

    .line 610
    iget-object v0, p0, Lcom/eltechs/axs/Keyboard;->UnicodeToXKeyMap:[Lcom/eltechs/axs/Keyboard$XKey;

    new-instance v1, Lcom/eltechs/axs/Keyboard$XKey;

    sget-object v2, Lcom/eltechs/axs/KeyCodesX;->KEY_U:Lcom/eltechs/axs/KeyCodesX;

    const/16 v3, 0x7cf

    invoke-direct {v1, p0, v2, v3}, Lcom/eltechs/axs/Keyboard$XKey;-><init>(Lcom/eltechs/axs/Keyboard;Lcom/eltechs/axs/KeyCodesX;I)V

    const/16 v2, 0x39f

    aput-object v1, v0, v2

    .line 611
    iget-object v0, p0, Lcom/eltechs/axs/Keyboard;->UnicodeToXKeyMap:[Lcom/eltechs/axs/Keyboard$XKey;

    new-instance v1, Lcom/eltechs/axs/Keyboard$XKey;

    sget-object v2, Lcom/eltechs/axs/KeyCodesX;->KEY_V:Lcom/eltechs/axs/KeyCodesX;

    const/16 v3, 0x7d0

    invoke-direct {v1, p0, v2, v3}, Lcom/eltechs/axs/Keyboard$XKey;-><init>(Lcom/eltechs/axs/Keyboard;Lcom/eltechs/axs/KeyCodesX;I)V

    const/16 v2, 0x3a0

    aput-object v1, v0, v2

    .line 612
    iget-object v0, p0, Lcom/eltechs/axs/Keyboard;->UnicodeToXKeyMap:[Lcom/eltechs/axs/Keyboard$XKey;

    new-instance v1, Lcom/eltechs/axs/Keyboard$XKey;

    sget-object v2, Lcom/eltechs/axs/KeyCodesX;->KEY_W:Lcom/eltechs/axs/KeyCodesX;

    const/16 v3, 0x7d1

    invoke-direct {v1, p0, v2, v3}, Lcom/eltechs/axs/Keyboard$XKey;-><init>(Lcom/eltechs/axs/Keyboard;Lcom/eltechs/axs/KeyCodesX;I)V

    const/16 v2, 0x3a1

    aput-object v1, v0, v2

    .line 613
    iget-object v0, p0, Lcom/eltechs/axs/Keyboard;->UnicodeToXKeyMap:[Lcom/eltechs/axs/Keyboard$XKey;

    new-instance v1, Lcom/eltechs/axs/Keyboard$XKey;

    sget-object v2, Lcom/eltechs/axs/KeyCodesX;->KEY_X:Lcom/eltechs/axs/KeyCodesX;

    const/16 v3, 0x7d2

    invoke-direct {v1, p0, v2, v3}, Lcom/eltechs/axs/Keyboard$XKey;-><init>(Lcom/eltechs/axs/Keyboard;Lcom/eltechs/axs/KeyCodesX;I)V

    const/16 v2, 0x3a3

    aput-object v1, v0, v2

    .line 614
    iget-object v0, p0, Lcom/eltechs/axs/Keyboard;->UnicodeToXKeyMap:[Lcom/eltechs/axs/Keyboard$XKey;

    new-instance v1, Lcom/eltechs/axs/Keyboard$XKey;

    sget-object v2, Lcom/eltechs/axs/KeyCodesX;->KEY_Y:Lcom/eltechs/axs/KeyCodesX;

    const/16 v3, 0x7d4

    invoke-direct {v1, p0, v2, v3}, Lcom/eltechs/axs/Keyboard$XKey;-><init>(Lcom/eltechs/axs/Keyboard;Lcom/eltechs/axs/KeyCodesX;I)V

    const/16 v2, 0x3a4

    aput-object v1, v0, v2

    .line 615
    iget-object v0, p0, Lcom/eltechs/axs/Keyboard;->UnicodeToXKeyMap:[Lcom/eltechs/axs/Keyboard$XKey;

    new-instance v1, Lcom/eltechs/axs/Keyboard$XKey;

    sget-object v2, Lcom/eltechs/axs/KeyCodesX;->KEY_Z:Lcom/eltechs/axs/KeyCodesX;

    const/16 v3, 0x7d5

    invoke-direct {v1, p0, v2, v3}, Lcom/eltechs/axs/Keyboard$XKey;-><init>(Lcom/eltechs/axs/Keyboard;Lcom/eltechs/axs/KeyCodesX;I)V

    const/16 v2, 0x3a5

    aput-object v1, v0, v2

    .line 616
    iget-object v0, p0, Lcom/eltechs/axs/Keyboard;->UnicodeToXKeyMap:[Lcom/eltechs/axs/Keyboard$XKey;

    new-instance v1, Lcom/eltechs/axs/Keyboard$XKey;

    sget-object v2, Lcom/eltechs/axs/KeyCodesX;->KEY_A:Lcom/eltechs/axs/KeyCodesX;

    const/16 v3, 0x7d6

    invoke-direct {v1, p0, v2, v3}, Lcom/eltechs/axs/Keyboard$XKey;-><init>(Lcom/eltechs/axs/Keyboard;Lcom/eltechs/axs/KeyCodesX;I)V

    const/16 v2, 0x3a6

    aput-object v1, v0, v2

    .line 617
    iget-object v0, p0, Lcom/eltechs/axs/Keyboard;->UnicodeToXKeyMap:[Lcom/eltechs/axs/Keyboard$XKey;

    new-instance v1, Lcom/eltechs/axs/Keyboard$XKey;

    sget-object v2, Lcom/eltechs/axs/KeyCodesX;->KEY_B:Lcom/eltechs/axs/KeyCodesX;

    const/16 v3, 0x7d7

    invoke-direct {v1, p0, v2, v3}, Lcom/eltechs/axs/Keyboard$XKey;-><init>(Lcom/eltechs/axs/Keyboard;Lcom/eltechs/axs/KeyCodesX;I)V

    const/16 v2, 0x3a7

    aput-object v1, v0, v2

    .line 618
    iget-object v0, p0, Lcom/eltechs/axs/Keyboard;->UnicodeToXKeyMap:[Lcom/eltechs/axs/Keyboard$XKey;

    new-instance v1, Lcom/eltechs/axs/Keyboard$XKey;

    sget-object v2, Lcom/eltechs/axs/KeyCodesX;->KEY_C:Lcom/eltechs/axs/KeyCodesX;

    const/16 v3, 0x7d8

    invoke-direct {v1, p0, v2, v3}, Lcom/eltechs/axs/Keyboard$XKey;-><init>(Lcom/eltechs/axs/Keyboard;Lcom/eltechs/axs/KeyCodesX;I)V

    const/16 v2, 0x3a8

    aput-object v1, v0, v2

    .line 619
    iget-object v0, p0, Lcom/eltechs/axs/Keyboard;->UnicodeToXKeyMap:[Lcom/eltechs/axs/Keyboard$XKey;

    new-instance v1, Lcom/eltechs/axs/Keyboard$XKey;

    sget-object v2, Lcom/eltechs/axs/KeyCodesX;->KEY_D:Lcom/eltechs/axs/KeyCodesX;

    const/16 v3, 0x7d9

    invoke-direct {v1, p0, v2, v3}, Lcom/eltechs/axs/Keyboard$XKey;-><init>(Lcom/eltechs/axs/Keyboard;Lcom/eltechs/axs/KeyCodesX;I)V

    const/16 v2, 0x3a9

    aput-object v1, v0, v2

    .line 620
    iget-object v0, p0, Lcom/eltechs/axs/Keyboard;->UnicodeToXKeyMap:[Lcom/eltechs/axs/Keyboard$XKey;

    new-instance v1, Lcom/eltechs/axs/Keyboard$XKey;

    sget-object v2, Lcom/eltechs/axs/KeyCodesX;->KEY_E:Lcom/eltechs/axs/KeyCodesX;

    const/16 v3, 0x7a5

    invoke-direct {v1, p0, v2, v3}, Lcom/eltechs/axs/Keyboard$XKey;-><init>(Lcom/eltechs/axs/Keyboard;Lcom/eltechs/axs/KeyCodesX;I)V

    const/16 v2, 0x3aa

    aput-object v1, v0, v2

    .line 621
    iget-object v0, p0, Lcom/eltechs/axs/Keyboard;->UnicodeToXKeyMap:[Lcom/eltechs/axs/Keyboard$XKey;

    new-instance v1, Lcom/eltechs/axs/Keyboard$XKey;

    sget-object v2, Lcom/eltechs/axs/KeyCodesX;->KEY_F:Lcom/eltechs/axs/KeyCodesX;

    const/16 v3, 0x7a9

    invoke-direct {v1, p0, v2, v3}, Lcom/eltechs/axs/Keyboard$XKey;-><init>(Lcom/eltechs/axs/Keyboard;Lcom/eltechs/axs/KeyCodesX;I)V

    const/16 v2, 0x3ab

    aput-object v1, v0, v2

    .line 622
    iget-object v0, p0, Lcom/eltechs/axs/Keyboard;->UnicodeToXKeyMap:[Lcom/eltechs/axs/Keyboard$XKey;

    new-instance v1, Lcom/eltechs/axs/Keyboard$XKey;

    sget-object v2, Lcom/eltechs/axs/KeyCodesX;->KEY_G:Lcom/eltechs/axs/KeyCodesX;

    const/16 v3, 0x7b1

    invoke-direct {v1, p0, v2, v3}, Lcom/eltechs/axs/Keyboard$XKey;-><init>(Lcom/eltechs/axs/Keyboard;Lcom/eltechs/axs/KeyCodesX;I)V

    const/16 v2, 0x3ac

    aput-object v1, v0, v2

    .line 623
    iget-object v0, p0, Lcom/eltechs/axs/Keyboard;->UnicodeToXKeyMap:[Lcom/eltechs/axs/Keyboard$XKey;

    new-instance v1, Lcom/eltechs/axs/Keyboard$XKey;

    sget-object v2, Lcom/eltechs/axs/KeyCodesX;->KEY_H:Lcom/eltechs/axs/KeyCodesX;

    const/16 v3, 0x7b2

    invoke-direct {v1, p0, v2, v3}, Lcom/eltechs/axs/Keyboard$XKey;-><init>(Lcom/eltechs/axs/Keyboard;Lcom/eltechs/axs/KeyCodesX;I)V

    const/16 v2, 0x3ad

    aput-object v1, v0, v2

    .line 624
    iget-object v0, p0, Lcom/eltechs/axs/Keyboard;->UnicodeToXKeyMap:[Lcom/eltechs/axs/Keyboard$XKey;

    new-instance v1, Lcom/eltechs/axs/Keyboard$XKey;

    sget-object v2, Lcom/eltechs/axs/KeyCodesX;->KEY_I:Lcom/eltechs/axs/KeyCodesX;

    const/16 v3, 0x7b3

    invoke-direct {v1, p0, v2, v3}, Lcom/eltechs/axs/Keyboard$XKey;-><init>(Lcom/eltechs/axs/Keyboard;Lcom/eltechs/axs/KeyCodesX;I)V

    const/16 v2, 0x3ae

    aput-object v1, v0, v2

    .line 625
    iget-object v0, p0, Lcom/eltechs/axs/Keyboard;->UnicodeToXKeyMap:[Lcom/eltechs/axs/Keyboard$XKey;

    new-instance v1, Lcom/eltechs/axs/Keyboard$XKey;

    sget-object v2, Lcom/eltechs/axs/KeyCodesX;->KEY_J:Lcom/eltechs/axs/KeyCodesX;

    const/16 v3, 0x7b4

    invoke-direct {v1, p0, v2, v3}, Lcom/eltechs/axs/Keyboard$XKey;-><init>(Lcom/eltechs/axs/Keyboard;Lcom/eltechs/axs/KeyCodesX;I)V

    const/16 v2, 0x3af

    aput-object v1, v0, v2

    .line 626
    iget-object v0, p0, Lcom/eltechs/axs/Keyboard;->UnicodeToXKeyMap:[Lcom/eltechs/axs/Keyboard$XKey;

    new-instance v1, Lcom/eltechs/axs/Keyboard$XKey;

    sget-object v2, Lcom/eltechs/axs/KeyCodesX;->KEY_K:Lcom/eltechs/axs/KeyCodesX;

    const/16 v3, 0x7ba

    invoke-direct {v1, p0, v2, v3}, Lcom/eltechs/axs/Keyboard$XKey;-><init>(Lcom/eltechs/axs/Keyboard;Lcom/eltechs/axs/KeyCodesX;I)V

    const/16 v2, 0x3b0

    aput-object v1, v0, v2

    .line 627
    iget-object v0, p0, Lcom/eltechs/axs/Keyboard;->UnicodeToXKeyMap:[Lcom/eltechs/axs/Keyboard$XKey;

    new-instance v1, Lcom/eltechs/axs/Keyboard$XKey;

    sget-object v2, Lcom/eltechs/axs/KeyCodesX;->KEY_L:Lcom/eltechs/axs/KeyCodesX;

    const/16 v3, 0x7e1

    invoke-direct {v1, p0, v2, v3}, Lcom/eltechs/axs/Keyboard$XKey;-><init>(Lcom/eltechs/axs/Keyboard;Lcom/eltechs/axs/KeyCodesX;I)V

    const/16 v2, 0x3b1

    aput-object v1, v0, v2

    .line 628
    iget-object v0, p0, Lcom/eltechs/axs/Keyboard;->UnicodeToXKeyMap:[Lcom/eltechs/axs/Keyboard$XKey;

    new-instance v1, Lcom/eltechs/axs/Keyboard$XKey;

    sget-object v2, Lcom/eltechs/axs/KeyCodesX;->KEY_M:Lcom/eltechs/axs/KeyCodesX;

    const/16 v3, 0x7e2

    invoke-direct {v1, p0, v2, v3}, Lcom/eltechs/axs/Keyboard$XKey;-><init>(Lcom/eltechs/axs/Keyboard;Lcom/eltechs/axs/KeyCodesX;I)V

    const/16 v2, 0x3b2

    aput-object v1, v0, v2

    .line 629
    iget-object v0, p0, Lcom/eltechs/axs/Keyboard;->UnicodeToXKeyMap:[Lcom/eltechs/axs/Keyboard$XKey;

    new-instance v1, Lcom/eltechs/axs/Keyboard$XKey;

    sget-object v2, Lcom/eltechs/axs/KeyCodesX;->KEY_N:Lcom/eltechs/axs/KeyCodesX;

    const/16 v3, 0x7e3

    invoke-direct {v1, p0, v2, v3}, Lcom/eltechs/axs/Keyboard$XKey;-><init>(Lcom/eltechs/axs/Keyboard;Lcom/eltechs/axs/KeyCodesX;I)V

    const/16 v2, 0x3b3

    aput-object v1, v0, v2

    .line 630
    iget-object v0, p0, Lcom/eltechs/axs/Keyboard;->UnicodeToXKeyMap:[Lcom/eltechs/axs/Keyboard$XKey;

    new-instance v1, Lcom/eltechs/axs/Keyboard$XKey;

    sget-object v2, Lcom/eltechs/axs/KeyCodesX;->KEY_O:Lcom/eltechs/axs/KeyCodesX;

    const/16 v3, 0x7e4

    invoke-direct {v1, p0, v2, v3}, Lcom/eltechs/axs/Keyboard$XKey;-><init>(Lcom/eltechs/axs/Keyboard;Lcom/eltechs/axs/KeyCodesX;I)V

    const/16 v2, 0x3b4

    aput-object v1, v0, v2

    .line 631
    iget-object v0, p0, Lcom/eltechs/axs/Keyboard;->UnicodeToXKeyMap:[Lcom/eltechs/axs/Keyboard$XKey;

    new-instance v1, Lcom/eltechs/axs/Keyboard$XKey;

    sget-object v2, Lcom/eltechs/axs/KeyCodesX;->KEY_P:Lcom/eltechs/axs/KeyCodesX;

    const/16 v3, 0x7e5

    invoke-direct {v1, p0, v2, v3}, Lcom/eltechs/axs/Keyboard$XKey;-><init>(Lcom/eltechs/axs/Keyboard;Lcom/eltechs/axs/KeyCodesX;I)V

    const/16 v2, 0x3b5

    aput-object v1, v0, v2

    .line 632
    iget-object v0, p0, Lcom/eltechs/axs/Keyboard;->UnicodeToXKeyMap:[Lcom/eltechs/axs/Keyboard$XKey;

    new-instance v1, Lcom/eltechs/axs/Keyboard$XKey;

    sget-object v2, Lcom/eltechs/axs/KeyCodesX;->KEY_Q:Lcom/eltechs/axs/KeyCodesX;

    const/16 v3, 0x7e6

    invoke-direct {v1, p0, v2, v3}, Lcom/eltechs/axs/Keyboard$XKey;-><init>(Lcom/eltechs/axs/Keyboard;Lcom/eltechs/axs/KeyCodesX;I)V

    const/16 v2, 0x3b6

    aput-object v1, v0, v2

    .line 633
    iget-object v0, p0, Lcom/eltechs/axs/Keyboard;->UnicodeToXKeyMap:[Lcom/eltechs/axs/Keyboard$XKey;

    new-instance v1, Lcom/eltechs/axs/Keyboard$XKey;

    sget-object v2, Lcom/eltechs/axs/KeyCodesX;->KEY_R:Lcom/eltechs/axs/KeyCodesX;

    const/16 v3, 0x7e7

    invoke-direct {v1, p0, v2, v3}, Lcom/eltechs/axs/Keyboard$XKey;-><init>(Lcom/eltechs/axs/Keyboard;Lcom/eltechs/axs/KeyCodesX;I)V

    const/16 v2, 0x3b7

    aput-object v1, v0, v2

    .line 634
    iget-object v0, p0, Lcom/eltechs/axs/Keyboard;->UnicodeToXKeyMap:[Lcom/eltechs/axs/Keyboard$XKey;

    new-instance v1, Lcom/eltechs/axs/Keyboard$XKey;

    sget-object v2, Lcom/eltechs/axs/KeyCodesX;->KEY_S:Lcom/eltechs/axs/KeyCodesX;

    const/16 v3, 0x7e8

    invoke-direct {v1, p0, v2, v3}, Lcom/eltechs/axs/Keyboard$XKey;-><init>(Lcom/eltechs/axs/Keyboard;Lcom/eltechs/axs/KeyCodesX;I)V

    const/16 v2, 0x3b8

    aput-object v1, v0, v2

    .line 635
    iget-object v0, p0, Lcom/eltechs/axs/Keyboard;->UnicodeToXKeyMap:[Lcom/eltechs/axs/Keyboard$XKey;

    new-instance v1, Lcom/eltechs/axs/Keyboard$XKey;

    sget-object v2, Lcom/eltechs/axs/KeyCodesX;->KEY_T:Lcom/eltechs/axs/KeyCodesX;

    const/16 v3, 0x7e9

    invoke-direct {v1, p0, v2, v3}, Lcom/eltechs/axs/Keyboard$XKey;-><init>(Lcom/eltechs/axs/Keyboard;Lcom/eltechs/axs/KeyCodesX;I)V

    const/16 v2, 0x3b9

    aput-object v1, v0, v2

    .line 636
    iget-object v0, p0, Lcom/eltechs/axs/Keyboard;->UnicodeToXKeyMap:[Lcom/eltechs/axs/Keyboard$XKey;

    new-instance v1, Lcom/eltechs/axs/Keyboard$XKey;

    sget-object v2, Lcom/eltechs/axs/KeyCodesX;->KEY_U:Lcom/eltechs/axs/KeyCodesX;

    const/16 v3, 0x7ea

    invoke-direct {v1, p0, v2, v3}, Lcom/eltechs/axs/Keyboard$XKey;-><init>(Lcom/eltechs/axs/Keyboard;Lcom/eltechs/axs/KeyCodesX;I)V

    const/16 v2, 0x3ba

    aput-object v1, v0, v2

    .line 637
    iget-object v0, p0, Lcom/eltechs/axs/Keyboard;->UnicodeToXKeyMap:[Lcom/eltechs/axs/Keyboard$XKey;

    new-instance v1, Lcom/eltechs/axs/Keyboard$XKey;

    sget-object v2, Lcom/eltechs/axs/KeyCodesX;->KEY_V:Lcom/eltechs/axs/KeyCodesX;

    const/16 v3, 0x7eb

    invoke-direct {v1, p0, v2, v3}, Lcom/eltechs/axs/Keyboard$XKey;-><init>(Lcom/eltechs/axs/Keyboard;Lcom/eltechs/axs/KeyCodesX;I)V

    const/16 v2, 0x3bb

    aput-object v1, v0, v2

    .line 638
    iget-object v0, p0, Lcom/eltechs/axs/Keyboard;->UnicodeToXKeyMap:[Lcom/eltechs/axs/Keyboard$XKey;

    new-instance v1, Lcom/eltechs/axs/Keyboard$XKey;

    sget-object v2, Lcom/eltechs/axs/KeyCodesX;->KEY_W:Lcom/eltechs/axs/KeyCodesX;

    const/16 v3, 0x7ec

    invoke-direct {v1, p0, v2, v3}, Lcom/eltechs/axs/Keyboard$XKey;-><init>(Lcom/eltechs/axs/Keyboard;Lcom/eltechs/axs/KeyCodesX;I)V

    const/16 v2, 0x3bc

    aput-object v1, v0, v2

    .line 639
    iget-object v0, p0, Lcom/eltechs/axs/Keyboard;->UnicodeToXKeyMap:[Lcom/eltechs/axs/Keyboard$XKey;

    new-instance v1, Lcom/eltechs/axs/Keyboard$XKey;

    sget-object v2, Lcom/eltechs/axs/KeyCodesX;->KEY_X:Lcom/eltechs/axs/KeyCodesX;

    const/16 v3, 0x7ed

    invoke-direct {v1, p0, v2, v3}, Lcom/eltechs/axs/Keyboard$XKey;-><init>(Lcom/eltechs/axs/Keyboard;Lcom/eltechs/axs/KeyCodesX;I)V

    const/16 v2, 0x3bd

    aput-object v1, v0, v2

    .line 640
    iget-object v0, p0, Lcom/eltechs/axs/Keyboard;->UnicodeToXKeyMap:[Lcom/eltechs/axs/Keyboard$XKey;

    new-instance v1, Lcom/eltechs/axs/Keyboard$XKey;

    sget-object v2, Lcom/eltechs/axs/KeyCodesX;->KEY_Y:Lcom/eltechs/axs/KeyCodesX;

    const/16 v3, 0x7ee

    invoke-direct {v1, p0, v2, v3}, Lcom/eltechs/axs/Keyboard$XKey;-><init>(Lcom/eltechs/axs/Keyboard;Lcom/eltechs/axs/KeyCodesX;I)V

    const/16 v2, 0x3be

    aput-object v1, v0, v2

    .line 641
    iget-object v0, p0, Lcom/eltechs/axs/Keyboard;->UnicodeToXKeyMap:[Lcom/eltechs/axs/Keyboard$XKey;

    new-instance v1, Lcom/eltechs/axs/Keyboard$XKey;

    sget-object v2, Lcom/eltechs/axs/KeyCodesX;->KEY_Z:Lcom/eltechs/axs/KeyCodesX;

    const/16 v3, 0x7ef

    invoke-direct {v1, p0, v2, v3}, Lcom/eltechs/axs/Keyboard$XKey;-><init>(Lcom/eltechs/axs/Keyboard;Lcom/eltechs/axs/KeyCodesX;I)V

    const/16 v2, 0x3bf

    aput-object v1, v0, v2

    .line 642
    iget-object v0, p0, Lcom/eltechs/axs/Keyboard;->UnicodeToXKeyMap:[Lcom/eltechs/axs/Keyboard$XKey;

    new-instance v1, Lcom/eltechs/axs/Keyboard$XKey;

    sget-object v2, Lcom/eltechs/axs/KeyCodesX;->KEY_A:Lcom/eltechs/axs/KeyCodesX;

    const/16 v3, 0x7f0

    invoke-direct {v1, p0, v2, v3}, Lcom/eltechs/axs/Keyboard$XKey;-><init>(Lcom/eltechs/axs/Keyboard;Lcom/eltechs/axs/KeyCodesX;I)V

    const/16 v2, 0x3c0

    aput-object v1, v0, v2

    .line 643
    iget-object v0, p0, Lcom/eltechs/axs/Keyboard;->UnicodeToXKeyMap:[Lcom/eltechs/axs/Keyboard$XKey;

    new-instance v1, Lcom/eltechs/axs/Keyboard$XKey;

    sget-object v2, Lcom/eltechs/axs/KeyCodesX;->KEY_B:Lcom/eltechs/axs/KeyCodesX;

    const/16 v3, 0x7f1

    invoke-direct {v1, p0, v2, v3}, Lcom/eltechs/axs/Keyboard$XKey;-><init>(Lcom/eltechs/axs/Keyboard;Lcom/eltechs/axs/KeyCodesX;I)V

    const/16 v2, 0x3c1

    aput-object v1, v0, v2

    .line 644
    iget-object v0, p0, Lcom/eltechs/axs/Keyboard;->UnicodeToXKeyMap:[Lcom/eltechs/axs/Keyboard$XKey;

    new-instance v1, Lcom/eltechs/axs/Keyboard$XKey;

    sget-object v2, Lcom/eltechs/axs/KeyCodesX;->KEY_C:Lcom/eltechs/axs/KeyCodesX;

    const/16 v3, 0x7f3

    invoke-direct {v1, p0, v2, v3}, Lcom/eltechs/axs/Keyboard$XKey;-><init>(Lcom/eltechs/axs/Keyboard;Lcom/eltechs/axs/KeyCodesX;I)V

    const/16 v2, 0x3c2

    aput-object v1, v0, v2

    .line 645
    iget-object v0, p0, Lcom/eltechs/axs/Keyboard;->UnicodeToXKeyMap:[Lcom/eltechs/axs/Keyboard$XKey;

    new-instance v1, Lcom/eltechs/axs/Keyboard$XKey;

    sget-object v2, Lcom/eltechs/axs/KeyCodesX;->KEY_D:Lcom/eltechs/axs/KeyCodesX;

    const/16 v3, 0x7f2

    invoke-direct {v1, p0, v2, v3}, Lcom/eltechs/axs/Keyboard$XKey;-><init>(Lcom/eltechs/axs/Keyboard;Lcom/eltechs/axs/KeyCodesX;I)V

    const/16 v2, 0x3c3

    aput-object v1, v0, v2

    .line 646
    iget-object v0, p0, Lcom/eltechs/axs/Keyboard;->UnicodeToXKeyMap:[Lcom/eltechs/axs/Keyboard$XKey;

    new-instance v1, Lcom/eltechs/axs/Keyboard$XKey;

    sget-object v2, Lcom/eltechs/axs/KeyCodesX;->KEY_E:Lcom/eltechs/axs/KeyCodesX;

    const/16 v3, 0x7f4

    invoke-direct {v1, p0, v2, v3}, Lcom/eltechs/axs/Keyboard$XKey;-><init>(Lcom/eltechs/axs/Keyboard;Lcom/eltechs/axs/KeyCodesX;I)V

    const/16 v2, 0x3c4

    aput-object v1, v0, v2

    .line 647
    iget-object v0, p0, Lcom/eltechs/axs/Keyboard;->UnicodeToXKeyMap:[Lcom/eltechs/axs/Keyboard$XKey;

    new-instance v1, Lcom/eltechs/axs/Keyboard$XKey;

    sget-object v2, Lcom/eltechs/axs/KeyCodesX;->KEY_F:Lcom/eltechs/axs/KeyCodesX;

    const/16 v3, 0x7f5

    invoke-direct {v1, p0, v2, v3}, Lcom/eltechs/axs/Keyboard$XKey;-><init>(Lcom/eltechs/axs/Keyboard;Lcom/eltechs/axs/KeyCodesX;I)V

    const/16 v2, 0x3c5

    aput-object v1, v0, v2

    .line 648
    iget-object v0, p0, Lcom/eltechs/axs/Keyboard;->UnicodeToXKeyMap:[Lcom/eltechs/axs/Keyboard$XKey;

    new-instance v1, Lcom/eltechs/axs/Keyboard$XKey;

    sget-object v2, Lcom/eltechs/axs/KeyCodesX;->KEY_G:Lcom/eltechs/axs/KeyCodesX;

    const/16 v3, 0x7f6

    invoke-direct {v1, p0, v2, v3}, Lcom/eltechs/axs/Keyboard$XKey;-><init>(Lcom/eltechs/axs/Keyboard;Lcom/eltechs/axs/KeyCodesX;I)V

    const/16 v2, 0x3c6

    aput-object v1, v0, v2

    .line 649
    iget-object v0, p0, Lcom/eltechs/axs/Keyboard;->UnicodeToXKeyMap:[Lcom/eltechs/axs/Keyboard$XKey;

    new-instance v1, Lcom/eltechs/axs/Keyboard$XKey;

    sget-object v2, Lcom/eltechs/axs/KeyCodesX;->KEY_H:Lcom/eltechs/axs/KeyCodesX;

    const/16 v3, 0x7f7

    invoke-direct {v1, p0, v2, v3}, Lcom/eltechs/axs/Keyboard$XKey;-><init>(Lcom/eltechs/axs/Keyboard;Lcom/eltechs/axs/KeyCodesX;I)V

    const/16 v2, 0x3c7

    aput-object v1, v0, v2

    .line 650
    iget-object v0, p0, Lcom/eltechs/axs/Keyboard;->UnicodeToXKeyMap:[Lcom/eltechs/axs/Keyboard$XKey;

    new-instance v1, Lcom/eltechs/axs/Keyboard$XKey;

    sget-object v2, Lcom/eltechs/axs/KeyCodesX;->KEY_I:Lcom/eltechs/axs/KeyCodesX;

    const/16 v3, 0x7f8

    invoke-direct {v1, p0, v2, v3}, Lcom/eltechs/axs/Keyboard$XKey;-><init>(Lcom/eltechs/axs/Keyboard;Lcom/eltechs/axs/KeyCodesX;I)V

    const/16 v2, 0x3c8

    aput-object v1, v0, v2

    .line 651
    iget-object v0, p0, Lcom/eltechs/axs/Keyboard;->UnicodeToXKeyMap:[Lcom/eltechs/axs/Keyboard$XKey;

    new-instance v1, Lcom/eltechs/axs/Keyboard$XKey;

    sget-object v2, Lcom/eltechs/axs/KeyCodesX;->KEY_J:Lcom/eltechs/axs/KeyCodesX;

    const/16 v3, 0x7f9

    invoke-direct {v1, p0, v2, v3}, Lcom/eltechs/axs/Keyboard$XKey;-><init>(Lcom/eltechs/axs/Keyboard;Lcom/eltechs/axs/KeyCodesX;I)V

    const/16 v2, 0x3c9

    aput-object v1, v0, v2

    .line 652
    iget-object v0, p0, Lcom/eltechs/axs/Keyboard;->UnicodeToXKeyMap:[Lcom/eltechs/axs/Keyboard$XKey;

    new-instance v1, Lcom/eltechs/axs/Keyboard$XKey;

    sget-object v2, Lcom/eltechs/axs/KeyCodesX;->KEY_K:Lcom/eltechs/axs/KeyCodesX;

    const/16 v3, 0x7b5

    invoke-direct {v1, p0, v2, v3}, Lcom/eltechs/axs/Keyboard$XKey;-><init>(Lcom/eltechs/axs/Keyboard;Lcom/eltechs/axs/KeyCodesX;I)V

    const/16 v2, 0x3ca

    aput-object v1, v0, v2

    .line 653
    iget-object v0, p0, Lcom/eltechs/axs/Keyboard;->UnicodeToXKeyMap:[Lcom/eltechs/axs/Keyboard$XKey;

    new-instance v1, Lcom/eltechs/axs/Keyboard$XKey;

    sget-object v2, Lcom/eltechs/axs/KeyCodesX;->KEY_L:Lcom/eltechs/axs/KeyCodesX;

    const/16 v3, 0x7b9

    invoke-direct {v1, p0, v2, v3}, Lcom/eltechs/axs/Keyboard$XKey;-><init>(Lcom/eltechs/axs/Keyboard;Lcom/eltechs/axs/KeyCodesX;I)V

    const/16 v2, 0x3cb

    aput-object v1, v0, v2

    .line 654
    iget-object v0, p0, Lcom/eltechs/axs/Keyboard;->UnicodeToXKeyMap:[Lcom/eltechs/axs/Keyboard$XKey;

    new-instance v1, Lcom/eltechs/axs/Keyboard$XKey;

    sget-object v2, Lcom/eltechs/axs/KeyCodesX;->KEY_M:Lcom/eltechs/axs/KeyCodesX;

    const/16 v3, 0x7b7

    invoke-direct {v1, p0, v2, v3}, Lcom/eltechs/axs/Keyboard$XKey;-><init>(Lcom/eltechs/axs/Keyboard;Lcom/eltechs/axs/KeyCodesX;I)V

    const/16 v2, 0x3cc

    aput-object v1, v0, v2

    .line 655
    iget-object v0, p0, Lcom/eltechs/axs/Keyboard;->UnicodeToXKeyMap:[Lcom/eltechs/axs/Keyboard$XKey;

    new-instance v1, Lcom/eltechs/axs/Keyboard$XKey;

    sget-object v2, Lcom/eltechs/axs/KeyCodesX;->KEY_N:Lcom/eltechs/axs/KeyCodesX;

    const/16 v3, 0x7b8

    invoke-direct {v1, p0, v2, v3}, Lcom/eltechs/axs/Keyboard$XKey;-><init>(Lcom/eltechs/axs/Keyboard;Lcom/eltechs/axs/KeyCodesX;I)V

    const/16 v2, 0x3cd

    aput-object v1, v0, v2

    .line 656
    iget-object v0, p0, Lcom/eltechs/axs/Keyboard;->UnicodeToXKeyMap:[Lcom/eltechs/axs/Keyboard$XKey;

    new-instance v1, Lcom/eltechs/axs/Keyboard$XKey;

    sget-object v2, Lcom/eltechs/axs/KeyCodesX;->KEY_O:Lcom/eltechs/axs/KeyCodesX;

    const/16 v3, 0x7bb

    invoke-direct {v1, p0, v2, v3}, Lcom/eltechs/axs/Keyboard$XKey;-><init>(Lcom/eltechs/axs/Keyboard;Lcom/eltechs/axs/KeyCodesX;I)V

    const/16 v2, 0x3ce

    aput-object v1, v0, v2

    .line 657
    iget-object v0, p0, Lcom/eltechs/axs/Keyboard;->UnicodeToXKeyMap:[Lcom/eltechs/axs/Keyboard$XKey;

    new-instance v1, Lcom/eltechs/axs/Keyboard$XKey;

    sget-object v2, Lcom/eltechs/axs/KeyCodesX;->KEY_P:Lcom/eltechs/axs/KeyCodesX;

    const/16 v3, 0x6b3

    invoke-direct {v1, p0, v2, v3}, Lcom/eltechs/axs/Keyboard$XKey;-><init>(Lcom/eltechs/axs/Keyboard;Lcom/eltechs/axs/KeyCodesX;I)V

    const/16 v2, 0x401

    aput-object v1, v0, v2

    .line 658
    iget-object v0, p0, Lcom/eltechs/axs/Keyboard;->UnicodeToXKeyMap:[Lcom/eltechs/axs/Keyboard$XKey;

    new-instance v1, Lcom/eltechs/axs/Keyboard$XKey;

    sget-object v2, Lcom/eltechs/axs/KeyCodesX;->KEY_Q:Lcom/eltechs/axs/KeyCodesX;

    const/16 v3, 0x6b1

    invoke-direct {v1, p0, v2, v3}, Lcom/eltechs/axs/Keyboard$XKey;-><init>(Lcom/eltechs/axs/Keyboard;Lcom/eltechs/axs/KeyCodesX;I)V

    const/16 v2, 0x402

    aput-object v1, v0, v2

    .line 659
    iget-object v0, p0, Lcom/eltechs/axs/Keyboard;->UnicodeToXKeyMap:[Lcom/eltechs/axs/Keyboard$XKey;

    new-instance v1, Lcom/eltechs/axs/Keyboard$XKey;

    sget-object v2, Lcom/eltechs/axs/KeyCodesX;->KEY_R:Lcom/eltechs/axs/KeyCodesX;

    const/16 v3, 0x6b2

    invoke-direct {v1, p0, v2, v3}, Lcom/eltechs/axs/Keyboard$XKey;-><init>(Lcom/eltechs/axs/Keyboard;Lcom/eltechs/axs/KeyCodesX;I)V

    const/16 v2, 0x403

    aput-object v1, v0, v2

    .line 660
    iget-object v0, p0, Lcom/eltechs/axs/Keyboard;->UnicodeToXKeyMap:[Lcom/eltechs/axs/Keyboard$XKey;

    new-instance v1, Lcom/eltechs/axs/Keyboard$XKey;

    sget-object v2, Lcom/eltechs/axs/KeyCodesX;->KEY_S:Lcom/eltechs/axs/KeyCodesX;

    const/16 v3, 0x6b4

    invoke-direct {v1, p0, v2, v3}, Lcom/eltechs/axs/Keyboard$XKey;-><init>(Lcom/eltechs/axs/Keyboard;Lcom/eltechs/axs/KeyCodesX;I)V

    const/16 v2, 0x404

    aput-object v1, v0, v2

    .line 661
    iget-object v0, p0, Lcom/eltechs/axs/Keyboard;->UnicodeToXKeyMap:[Lcom/eltechs/axs/Keyboard$XKey;

    new-instance v1, Lcom/eltechs/axs/Keyboard$XKey;

    sget-object v2, Lcom/eltechs/axs/KeyCodesX;->KEY_T:Lcom/eltechs/axs/KeyCodesX;

    const/16 v3, 0x6b5

    invoke-direct {v1, p0, v2, v3}, Lcom/eltechs/axs/Keyboard$XKey;-><init>(Lcom/eltechs/axs/Keyboard;Lcom/eltechs/axs/KeyCodesX;I)V

    const/16 v2, 0x405

    aput-object v1, v0, v2

    .line 662
    iget-object v0, p0, Lcom/eltechs/axs/Keyboard;->UnicodeToXKeyMap:[Lcom/eltechs/axs/Keyboard$XKey;

    new-instance v1, Lcom/eltechs/axs/Keyboard$XKey;

    sget-object v2, Lcom/eltechs/axs/KeyCodesX;->KEY_U:Lcom/eltechs/axs/KeyCodesX;

    const/16 v3, 0x6b6

    invoke-direct {v1, p0, v2, v3}, Lcom/eltechs/axs/Keyboard$XKey;-><init>(Lcom/eltechs/axs/Keyboard;Lcom/eltechs/axs/KeyCodesX;I)V

    const/16 v2, 0x406

    aput-object v1, v0, v2

    .line 663
    iget-object v0, p0, Lcom/eltechs/axs/Keyboard;->UnicodeToXKeyMap:[Lcom/eltechs/axs/Keyboard$XKey;

    new-instance v1, Lcom/eltechs/axs/Keyboard$XKey;

    sget-object v2, Lcom/eltechs/axs/KeyCodesX;->KEY_V:Lcom/eltechs/axs/KeyCodesX;

    const/16 v3, 0x6b7

    invoke-direct {v1, p0, v2, v3}, Lcom/eltechs/axs/Keyboard$XKey;-><init>(Lcom/eltechs/axs/Keyboard;Lcom/eltechs/axs/KeyCodesX;I)V

    const/16 v2, 0x407

    aput-object v1, v0, v2

    .line 664
    iget-object v0, p0, Lcom/eltechs/axs/Keyboard;->UnicodeToXKeyMap:[Lcom/eltechs/axs/Keyboard$XKey;

    new-instance v1, Lcom/eltechs/axs/Keyboard$XKey;

    sget-object v2, Lcom/eltechs/axs/KeyCodesX;->KEY_W:Lcom/eltechs/axs/KeyCodesX;

    const/16 v3, 0x6b8

    invoke-direct {v1, p0, v2, v3}, Lcom/eltechs/axs/Keyboard$XKey;-><init>(Lcom/eltechs/axs/Keyboard;Lcom/eltechs/axs/KeyCodesX;I)V

    const/16 v2, 0x408

    aput-object v1, v0, v2

    .line 665
    iget-object v0, p0, Lcom/eltechs/axs/Keyboard;->UnicodeToXKeyMap:[Lcom/eltechs/axs/Keyboard$XKey;

    new-instance v1, Lcom/eltechs/axs/Keyboard$XKey;

    sget-object v2, Lcom/eltechs/axs/KeyCodesX;->KEY_X:Lcom/eltechs/axs/KeyCodesX;

    const/16 v3, 0x6b9

    invoke-direct {v1, p0, v2, v3}, Lcom/eltechs/axs/Keyboard$XKey;-><init>(Lcom/eltechs/axs/Keyboard;Lcom/eltechs/axs/KeyCodesX;I)V

    const/16 v2, 0x409

    aput-object v1, v0, v2

    .line 666
    iget-object v0, p0, Lcom/eltechs/axs/Keyboard;->UnicodeToXKeyMap:[Lcom/eltechs/axs/Keyboard$XKey;

    new-instance v1, Lcom/eltechs/axs/Keyboard$XKey;

    sget-object v2, Lcom/eltechs/axs/KeyCodesX;->KEY_Y:Lcom/eltechs/axs/KeyCodesX;

    const/16 v3, 0x6ba

    invoke-direct {v1, p0, v2, v3}, Lcom/eltechs/axs/Keyboard$XKey;-><init>(Lcom/eltechs/axs/Keyboard;Lcom/eltechs/axs/KeyCodesX;I)V

    const/16 v2, 0x40a

    aput-object v1, v0, v2

    .line 667
    iget-object v0, p0, Lcom/eltechs/axs/Keyboard;->UnicodeToXKeyMap:[Lcom/eltechs/axs/Keyboard$XKey;

    new-instance v1, Lcom/eltechs/axs/Keyboard$XKey;

    sget-object v2, Lcom/eltechs/axs/KeyCodesX;->KEY_Z:Lcom/eltechs/axs/KeyCodesX;

    const/16 v3, 0x6bb

    invoke-direct {v1, p0, v2, v3}, Lcom/eltechs/axs/Keyboard$XKey;-><init>(Lcom/eltechs/axs/Keyboard;Lcom/eltechs/axs/KeyCodesX;I)V

    const/16 v2, 0x40b

    aput-object v1, v0, v2

    .line 668
    iget-object v0, p0, Lcom/eltechs/axs/Keyboard;->UnicodeToXKeyMap:[Lcom/eltechs/axs/Keyboard$XKey;

    new-instance v1, Lcom/eltechs/axs/Keyboard$XKey;

    sget-object v2, Lcom/eltechs/axs/KeyCodesX;->KEY_A:Lcom/eltechs/axs/KeyCodesX;

    const/16 v3, 0x6bc

    invoke-direct {v1, p0, v2, v3}, Lcom/eltechs/axs/Keyboard$XKey;-><init>(Lcom/eltechs/axs/Keyboard;Lcom/eltechs/axs/KeyCodesX;I)V

    const/16 v2, 0x40c

    aput-object v1, v0, v2

    .line 669
    iget-object v0, p0, Lcom/eltechs/axs/Keyboard;->UnicodeToXKeyMap:[Lcom/eltechs/axs/Keyboard$XKey;

    new-instance v1, Lcom/eltechs/axs/Keyboard$XKey;

    sget-object v2, Lcom/eltechs/axs/KeyCodesX;->KEY_B:Lcom/eltechs/axs/KeyCodesX;

    const/16 v3, 0x6be

    invoke-direct {v1, p0, v2, v3}, Lcom/eltechs/axs/Keyboard$XKey;-><init>(Lcom/eltechs/axs/Keyboard;Lcom/eltechs/axs/KeyCodesX;I)V

    const/16 v2, 0x40e

    aput-object v1, v0, v2

    .line 670
    iget-object v0, p0, Lcom/eltechs/axs/Keyboard;->UnicodeToXKeyMap:[Lcom/eltechs/axs/Keyboard$XKey;

    new-instance v1, Lcom/eltechs/axs/Keyboard$XKey;

    sget-object v2, Lcom/eltechs/axs/KeyCodesX;->KEY_C:Lcom/eltechs/axs/KeyCodesX;

    const/16 v3, 0x6bf

    invoke-direct {v1, p0, v2, v3}, Lcom/eltechs/axs/Keyboard$XKey;-><init>(Lcom/eltechs/axs/Keyboard;Lcom/eltechs/axs/KeyCodesX;I)V

    const/16 v2, 0x40f

    aput-object v1, v0, v2

    .line 671
    iget-object v0, p0, Lcom/eltechs/axs/Keyboard;->UnicodeToXKeyMap:[Lcom/eltechs/axs/Keyboard$XKey;

    new-instance v1, Lcom/eltechs/axs/Keyboard$XKey;

    sget-object v2, Lcom/eltechs/axs/KeyCodesX;->KEY_D:Lcom/eltechs/axs/KeyCodesX;

    const/16 v3, 0x6e1

    invoke-direct {v1, p0, v2, v3}, Lcom/eltechs/axs/Keyboard$XKey;-><init>(Lcom/eltechs/axs/Keyboard;Lcom/eltechs/axs/KeyCodesX;I)V

    const/16 v2, 0x410

    aput-object v1, v0, v2

    .line 672
    iget-object v0, p0, Lcom/eltechs/axs/Keyboard;->UnicodeToXKeyMap:[Lcom/eltechs/axs/Keyboard$XKey;

    new-instance v1, Lcom/eltechs/axs/Keyboard$XKey;

    sget-object v2, Lcom/eltechs/axs/KeyCodesX;->KEY_E:Lcom/eltechs/axs/KeyCodesX;

    const/16 v3, 0x6e2

    invoke-direct {v1, p0, v2, v3}, Lcom/eltechs/axs/Keyboard$XKey;-><init>(Lcom/eltechs/axs/Keyboard;Lcom/eltechs/axs/KeyCodesX;I)V

    const/16 v2, 0x411

    aput-object v1, v0, v2

    .line 673
    iget-object v0, p0, Lcom/eltechs/axs/Keyboard;->UnicodeToXKeyMap:[Lcom/eltechs/axs/Keyboard$XKey;

    new-instance v1, Lcom/eltechs/axs/Keyboard$XKey;

    sget-object v2, Lcom/eltechs/axs/KeyCodesX;->KEY_F:Lcom/eltechs/axs/KeyCodesX;

    const/16 v3, 0x6f7

    invoke-direct {v1, p0, v2, v3}, Lcom/eltechs/axs/Keyboard$XKey;-><init>(Lcom/eltechs/axs/Keyboard;Lcom/eltechs/axs/KeyCodesX;I)V

    const/16 v2, 0x412

    aput-object v1, v0, v2

    .line 674
    iget-object v0, p0, Lcom/eltechs/axs/Keyboard;->UnicodeToXKeyMap:[Lcom/eltechs/axs/Keyboard$XKey;

    new-instance v1, Lcom/eltechs/axs/Keyboard$XKey;

    sget-object v2, Lcom/eltechs/axs/KeyCodesX;->KEY_G:Lcom/eltechs/axs/KeyCodesX;

    const/16 v3, 0x6e7

    invoke-direct {v1, p0, v2, v3}, Lcom/eltechs/axs/Keyboard$XKey;-><init>(Lcom/eltechs/axs/Keyboard;Lcom/eltechs/axs/KeyCodesX;I)V

    const/16 v2, 0x413

    aput-object v1, v0, v2

    .line 675
    iget-object v0, p0, Lcom/eltechs/axs/Keyboard;->UnicodeToXKeyMap:[Lcom/eltechs/axs/Keyboard$XKey;

    new-instance v1, Lcom/eltechs/axs/Keyboard$XKey;

    sget-object v2, Lcom/eltechs/axs/KeyCodesX;->KEY_H:Lcom/eltechs/axs/KeyCodesX;

    const/16 v3, 0x6e4

    invoke-direct {v1, p0, v2, v3}, Lcom/eltechs/axs/Keyboard$XKey;-><init>(Lcom/eltechs/axs/Keyboard;Lcom/eltechs/axs/KeyCodesX;I)V

    const/16 v2, 0x414

    aput-object v1, v0, v2

    .line 676
    iget-object v0, p0, Lcom/eltechs/axs/Keyboard;->UnicodeToXKeyMap:[Lcom/eltechs/axs/Keyboard$XKey;

    new-instance v1, Lcom/eltechs/axs/Keyboard$XKey;

    sget-object v2, Lcom/eltechs/axs/KeyCodesX;->KEY_I:Lcom/eltechs/axs/KeyCodesX;

    const/16 v3, 0x6e5

    invoke-direct {v1, p0, v2, v3}, Lcom/eltechs/axs/Keyboard$XKey;-><init>(Lcom/eltechs/axs/Keyboard;Lcom/eltechs/axs/KeyCodesX;I)V

    const/16 v2, 0x415

    aput-object v1, v0, v2

    .line 677
    iget-object v0, p0, Lcom/eltechs/axs/Keyboard;->UnicodeToXKeyMap:[Lcom/eltechs/axs/Keyboard$XKey;

    new-instance v1, Lcom/eltechs/axs/Keyboard$XKey;

    sget-object v2, Lcom/eltechs/axs/KeyCodesX;->KEY_J:Lcom/eltechs/axs/KeyCodesX;

    const/16 v3, 0x6f6

    invoke-direct {v1, p0, v2, v3}, Lcom/eltechs/axs/Keyboard$XKey;-><init>(Lcom/eltechs/axs/Keyboard;Lcom/eltechs/axs/KeyCodesX;I)V

    const/16 v2, 0x416

    aput-object v1, v0, v2

    .line 678
    iget-object v0, p0, Lcom/eltechs/axs/Keyboard;->UnicodeToXKeyMap:[Lcom/eltechs/axs/Keyboard$XKey;

    new-instance v1, Lcom/eltechs/axs/Keyboard$XKey;

    sget-object v2, Lcom/eltechs/axs/KeyCodesX;->KEY_K:Lcom/eltechs/axs/KeyCodesX;

    const/16 v3, 0x6fa

    invoke-direct {v1, p0, v2, v3}, Lcom/eltechs/axs/Keyboard$XKey;-><init>(Lcom/eltechs/axs/Keyboard;Lcom/eltechs/axs/KeyCodesX;I)V

    const/16 v2, 0x417

    aput-object v1, v0, v2

    .line 679
    iget-object v0, p0, Lcom/eltechs/axs/Keyboard;->UnicodeToXKeyMap:[Lcom/eltechs/axs/Keyboard$XKey;

    new-instance v1, Lcom/eltechs/axs/Keyboard$XKey;

    sget-object v2, Lcom/eltechs/axs/KeyCodesX;->KEY_L:Lcom/eltechs/axs/KeyCodesX;

    const/16 v3, 0x6e9

    invoke-direct {v1, p0, v2, v3}, Lcom/eltechs/axs/Keyboard$XKey;-><init>(Lcom/eltechs/axs/Keyboard;Lcom/eltechs/axs/KeyCodesX;I)V

    const/16 v2, 0x418

    aput-object v1, v0, v2

    .line 680
    iget-object v0, p0, Lcom/eltechs/axs/Keyboard;->UnicodeToXKeyMap:[Lcom/eltechs/axs/Keyboard$XKey;

    new-instance v1, Lcom/eltechs/axs/Keyboard$XKey;

    sget-object v2, Lcom/eltechs/axs/KeyCodesX;->KEY_M:Lcom/eltechs/axs/KeyCodesX;

    const/16 v3, 0x6ea

    invoke-direct {v1, p0, v2, v3}, Lcom/eltechs/axs/Keyboard$XKey;-><init>(Lcom/eltechs/axs/Keyboard;Lcom/eltechs/axs/KeyCodesX;I)V

    const/16 v2, 0x419

    aput-object v1, v0, v2

    .line 681
    iget-object v0, p0, Lcom/eltechs/axs/Keyboard;->UnicodeToXKeyMap:[Lcom/eltechs/axs/Keyboard$XKey;

    new-instance v1, Lcom/eltechs/axs/Keyboard$XKey;

    sget-object v2, Lcom/eltechs/axs/KeyCodesX;->KEY_N:Lcom/eltechs/axs/KeyCodesX;

    const/16 v3, 0x6eb

    invoke-direct {v1, p0, v2, v3}, Lcom/eltechs/axs/Keyboard$XKey;-><init>(Lcom/eltechs/axs/Keyboard;Lcom/eltechs/axs/KeyCodesX;I)V

    const/16 v2, 0x41a

    aput-object v1, v0, v2

    .line 682
    iget-object v0, p0, Lcom/eltechs/axs/Keyboard;->UnicodeToXKeyMap:[Lcom/eltechs/axs/Keyboard$XKey;

    new-instance v1, Lcom/eltechs/axs/Keyboard$XKey;

    sget-object v2, Lcom/eltechs/axs/KeyCodesX;->KEY_O:Lcom/eltechs/axs/KeyCodesX;

    const/16 v3, 0x6ec

    invoke-direct {v1, p0, v2, v3}, Lcom/eltechs/axs/Keyboard$XKey;-><init>(Lcom/eltechs/axs/Keyboard;Lcom/eltechs/axs/KeyCodesX;I)V

    const/16 v2, 0x41b

    aput-object v1, v0, v2

    .line 683
    iget-object v0, p0, Lcom/eltechs/axs/Keyboard;->UnicodeToXKeyMap:[Lcom/eltechs/axs/Keyboard$XKey;

    new-instance v1, Lcom/eltechs/axs/Keyboard$XKey;

    sget-object v2, Lcom/eltechs/axs/KeyCodesX;->KEY_P:Lcom/eltechs/axs/KeyCodesX;

    const/16 v3, 0x6ed

    invoke-direct {v1, p0, v2, v3}, Lcom/eltechs/axs/Keyboard$XKey;-><init>(Lcom/eltechs/axs/Keyboard;Lcom/eltechs/axs/KeyCodesX;I)V

    const/16 v2, 0x41c

    aput-object v1, v0, v2

    .line 684
    iget-object v0, p0, Lcom/eltechs/axs/Keyboard;->UnicodeToXKeyMap:[Lcom/eltechs/axs/Keyboard$XKey;

    new-instance v1, Lcom/eltechs/axs/Keyboard$XKey;

    sget-object v2, Lcom/eltechs/axs/KeyCodesX;->KEY_Q:Lcom/eltechs/axs/KeyCodesX;

    const/16 v3, 0x6ee

    invoke-direct {v1, p0, v2, v3}, Lcom/eltechs/axs/Keyboard$XKey;-><init>(Lcom/eltechs/axs/Keyboard;Lcom/eltechs/axs/KeyCodesX;I)V

    const/16 v2, 0x41d

    aput-object v1, v0, v2

    .line 685
    iget-object v0, p0, Lcom/eltechs/axs/Keyboard;->UnicodeToXKeyMap:[Lcom/eltechs/axs/Keyboard$XKey;

    new-instance v1, Lcom/eltechs/axs/Keyboard$XKey;

    sget-object v2, Lcom/eltechs/axs/KeyCodesX;->KEY_R:Lcom/eltechs/axs/KeyCodesX;

    const/16 v3, 0x6ef

    invoke-direct {v1, p0, v2, v3}, Lcom/eltechs/axs/Keyboard$XKey;-><init>(Lcom/eltechs/axs/Keyboard;Lcom/eltechs/axs/KeyCodesX;I)V

    const/16 v2, 0x41e

    aput-object v1, v0, v2

    .line 686
    iget-object v0, p0, Lcom/eltechs/axs/Keyboard;->UnicodeToXKeyMap:[Lcom/eltechs/axs/Keyboard$XKey;

    new-instance v1, Lcom/eltechs/axs/Keyboard$XKey;

    sget-object v2, Lcom/eltechs/axs/KeyCodesX;->KEY_S:Lcom/eltechs/axs/KeyCodesX;

    const/16 v3, 0x6f0

    invoke-direct {v1, p0, v2, v3}, Lcom/eltechs/axs/Keyboard$XKey;-><init>(Lcom/eltechs/axs/Keyboard;Lcom/eltechs/axs/KeyCodesX;I)V

    const/16 v2, 0x41f

    aput-object v1, v0, v2

    .line 687
    iget-object v0, p0, Lcom/eltechs/axs/Keyboard;->UnicodeToXKeyMap:[Lcom/eltechs/axs/Keyboard$XKey;

    new-instance v1, Lcom/eltechs/axs/Keyboard$XKey;

    sget-object v2, Lcom/eltechs/axs/KeyCodesX;->KEY_T:Lcom/eltechs/axs/KeyCodesX;

    const/16 v3, 0x6f2

    invoke-direct {v1, p0, v2, v3}, Lcom/eltechs/axs/Keyboard$XKey;-><init>(Lcom/eltechs/axs/Keyboard;Lcom/eltechs/axs/KeyCodesX;I)V

    const/16 v2, 0x420

    aput-object v1, v0, v2

    .line 688
    iget-object v0, p0, Lcom/eltechs/axs/Keyboard;->UnicodeToXKeyMap:[Lcom/eltechs/axs/Keyboard$XKey;

    new-instance v1, Lcom/eltechs/axs/Keyboard$XKey;

    sget-object v2, Lcom/eltechs/axs/KeyCodesX;->KEY_U:Lcom/eltechs/axs/KeyCodesX;

    const/16 v3, 0x6f3

    invoke-direct {v1, p0, v2, v3}, Lcom/eltechs/axs/Keyboard$XKey;-><init>(Lcom/eltechs/axs/Keyboard;Lcom/eltechs/axs/KeyCodesX;I)V

    const/16 v2, 0x421

    aput-object v1, v0, v2

    .line 689
    iget-object v0, p0, Lcom/eltechs/axs/Keyboard;->UnicodeToXKeyMap:[Lcom/eltechs/axs/Keyboard$XKey;

    new-instance v1, Lcom/eltechs/axs/Keyboard$XKey;

    sget-object v2, Lcom/eltechs/axs/KeyCodesX;->KEY_V:Lcom/eltechs/axs/KeyCodesX;

    const/16 v3, 0x6f4

    invoke-direct {v1, p0, v2, v3}, Lcom/eltechs/axs/Keyboard$XKey;-><init>(Lcom/eltechs/axs/Keyboard;Lcom/eltechs/axs/KeyCodesX;I)V

    const/16 v2, 0x422

    aput-object v1, v0, v2

    .line 690
    iget-object v0, p0, Lcom/eltechs/axs/Keyboard;->UnicodeToXKeyMap:[Lcom/eltechs/axs/Keyboard$XKey;

    new-instance v1, Lcom/eltechs/axs/Keyboard$XKey;

    sget-object v2, Lcom/eltechs/axs/KeyCodesX;->KEY_W:Lcom/eltechs/axs/KeyCodesX;

    const/16 v3, 0x6f5

    invoke-direct {v1, p0, v2, v3}, Lcom/eltechs/axs/Keyboard$XKey;-><init>(Lcom/eltechs/axs/Keyboard;Lcom/eltechs/axs/KeyCodesX;I)V

    const/16 v2, 0x423

    aput-object v1, v0, v2

    .line 691
    iget-object v0, p0, Lcom/eltechs/axs/Keyboard;->UnicodeToXKeyMap:[Lcom/eltechs/axs/Keyboard$XKey;

    new-instance v1, Lcom/eltechs/axs/Keyboard$XKey;

    sget-object v2, Lcom/eltechs/axs/KeyCodesX;->KEY_X:Lcom/eltechs/axs/KeyCodesX;

    const/16 v3, 0x6e6

    invoke-direct {v1, p0, v2, v3}, Lcom/eltechs/axs/Keyboard$XKey;-><init>(Lcom/eltechs/axs/Keyboard;Lcom/eltechs/axs/KeyCodesX;I)V

    const/16 v2, 0x424

    aput-object v1, v0, v2

    .line 692
    iget-object v0, p0, Lcom/eltechs/axs/Keyboard;->UnicodeToXKeyMap:[Lcom/eltechs/axs/Keyboard$XKey;

    new-instance v1, Lcom/eltechs/axs/Keyboard$XKey;

    sget-object v2, Lcom/eltechs/axs/KeyCodesX;->KEY_Y:Lcom/eltechs/axs/KeyCodesX;

    const/16 v3, 0x6e8

    invoke-direct {v1, p0, v2, v3}, Lcom/eltechs/axs/Keyboard$XKey;-><init>(Lcom/eltechs/axs/Keyboard;Lcom/eltechs/axs/KeyCodesX;I)V

    const/16 v2, 0x425

    aput-object v1, v0, v2

    .line 693
    iget-object v0, p0, Lcom/eltechs/axs/Keyboard;->UnicodeToXKeyMap:[Lcom/eltechs/axs/Keyboard$XKey;

    new-instance v1, Lcom/eltechs/axs/Keyboard$XKey;

    sget-object v2, Lcom/eltechs/axs/KeyCodesX;->KEY_Z:Lcom/eltechs/axs/KeyCodesX;

    const/16 v3, 0x6e3

    invoke-direct {v1, p0, v2, v3}, Lcom/eltechs/axs/Keyboard$XKey;-><init>(Lcom/eltechs/axs/Keyboard;Lcom/eltechs/axs/KeyCodesX;I)V

    const/16 v2, 0x426

    aput-object v1, v0, v2

    .line 694
    iget-object v0, p0, Lcom/eltechs/axs/Keyboard;->UnicodeToXKeyMap:[Lcom/eltechs/axs/Keyboard$XKey;

    new-instance v1, Lcom/eltechs/axs/Keyboard$XKey;

    sget-object v2, Lcom/eltechs/axs/KeyCodesX;->KEY_A:Lcom/eltechs/axs/KeyCodesX;

    const/16 v3, 0x6fe

    invoke-direct {v1, p0, v2, v3}, Lcom/eltechs/axs/Keyboard$XKey;-><init>(Lcom/eltechs/axs/Keyboard;Lcom/eltechs/axs/KeyCodesX;I)V

    const/16 v2, 0x427

    aput-object v1, v0, v2

    .line 695
    iget-object v0, p0, Lcom/eltechs/axs/Keyboard;->UnicodeToXKeyMap:[Lcom/eltechs/axs/Keyboard$XKey;

    new-instance v1, Lcom/eltechs/axs/Keyboard$XKey;

    sget-object v2, Lcom/eltechs/axs/KeyCodesX;->KEY_B:Lcom/eltechs/axs/KeyCodesX;

    const/16 v3, 0x6fb

    invoke-direct {v1, p0, v2, v3}, Lcom/eltechs/axs/Keyboard$XKey;-><init>(Lcom/eltechs/axs/Keyboard;Lcom/eltechs/axs/KeyCodesX;I)V

    const/16 v2, 0x428

    aput-object v1, v0, v2

    .line 696
    iget-object v0, p0, Lcom/eltechs/axs/Keyboard;->UnicodeToXKeyMap:[Lcom/eltechs/axs/Keyboard$XKey;

    new-instance v1, Lcom/eltechs/axs/Keyboard$XKey;

    sget-object v2, Lcom/eltechs/axs/KeyCodesX;->KEY_C:Lcom/eltechs/axs/KeyCodesX;

    const/16 v3, 0x6fd

    invoke-direct {v1, p0, v2, v3}, Lcom/eltechs/axs/Keyboard$XKey;-><init>(Lcom/eltechs/axs/Keyboard;Lcom/eltechs/axs/KeyCodesX;I)V

    const/16 v2, 0x429

    aput-object v1, v0, v2

    .line 697
    iget-object v0, p0, Lcom/eltechs/axs/Keyboard;->UnicodeToXKeyMap:[Lcom/eltechs/axs/Keyboard$XKey;

    new-instance v1, Lcom/eltechs/axs/Keyboard$XKey;

    sget-object v2, Lcom/eltechs/axs/KeyCodesX;->KEY_D:Lcom/eltechs/axs/KeyCodesX;

    const/16 v3, 0x6ff

    invoke-direct {v1, p0, v2, v3}, Lcom/eltechs/axs/Keyboard$XKey;-><init>(Lcom/eltechs/axs/Keyboard;Lcom/eltechs/axs/KeyCodesX;I)V

    const/16 v2, 0x42a

    aput-object v1, v0, v2

    .line 698
    iget-object v0, p0, Lcom/eltechs/axs/Keyboard;->UnicodeToXKeyMap:[Lcom/eltechs/axs/Keyboard$XKey;

    new-instance v1, Lcom/eltechs/axs/Keyboard$XKey;

    sget-object v2, Lcom/eltechs/axs/KeyCodesX;->KEY_E:Lcom/eltechs/axs/KeyCodesX;

    const/16 v3, 0x6f9

    invoke-direct {v1, p0, v2, v3}, Lcom/eltechs/axs/Keyboard$XKey;-><init>(Lcom/eltechs/axs/Keyboard;Lcom/eltechs/axs/KeyCodesX;I)V

    const/16 v2, 0x42b

    aput-object v1, v0, v2

    .line 699
    iget-object v0, p0, Lcom/eltechs/axs/Keyboard;->UnicodeToXKeyMap:[Lcom/eltechs/axs/Keyboard$XKey;

    new-instance v1, Lcom/eltechs/axs/Keyboard$XKey;

    sget-object v2, Lcom/eltechs/axs/KeyCodesX;->KEY_F:Lcom/eltechs/axs/KeyCodesX;

    const/16 v3, 0x6f8

    invoke-direct {v1, p0, v2, v3}, Lcom/eltechs/axs/Keyboard$XKey;-><init>(Lcom/eltechs/axs/Keyboard;Lcom/eltechs/axs/KeyCodesX;I)V

    const/16 v2, 0x42c

    aput-object v1, v0, v2

    .line 700
    iget-object v0, p0, Lcom/eltechs/axs/Keyboard;->UnicodeToXKeyMap:[Lcom/eltechs/axs/Keyboard$XKey;

    new-instance v1, Lcom/eltechs/axs/Keyboard$XKey;

    sget-object v2, Lcom/eltechs/axs/KeyCodesX;->KEY_G:Lcom/eltechs/axs/KeyCodesX;

    const/16 v3, 0x6fc

    invoke-direct {v1, p0, v2, v3}, Lcom/eltechs/axs/Keyboard$XKey;-><init>(Lcom/eltechs/axs/Keyboard;Lcom/eltechs/axs/KeyCodesX;I)V

    const/16 v2, 0x42d

    aput-object v1, v0, v2

    .line 701
    iget-object v0, p0, Lcom/eltechs/axs/Keyboard;->UnicodeToXKeyMap:[Lcom/eltechs/axs/Keyboard$XKey;

    new-instance v1, Lcom/eltechs/axs/Keyboard$XKey;

    sget-object v2, Lcom/eltechs/axs/KeyCodesX;->KEY_H:Lcom/eltechs/axs/KeyCodesX;

    const/16 v3, 0x6e0

    invoke-direct {v1, p0, v2, v3}, Lcom/eltechs/axs/Keyboard$XKey;-><init>(Lcom/eltechs/axs/Keyboard;Lcom/eltechs/axs/KeyCodesX;I)V

    const/16 v2, 0x42e

    aput-object v1, v0, v2

    .line 702
    iget-object v0, p0, Lcom/eltechs/axs/Keyboard;->UnicodeToXKeyMap:[Lcom/eltechs/axs/Keyboard$XKey;

    new-instance v1, Lcom/eltechs/axs/Keyboard$XKey;

    sget-object v2, Lcom/eltechs/axs/KeyCodesX;->KEY_I:Lcom/eltechs/axs/KeyCodesX;

    const/16 v3, 0x6f1

    invoke-direct {v1, p0, v2, v3}, Lcom/eltechs/axs/Keyboard$XKey;-><init>(Lcom/eltechs/axs/Keyboard;Lcom/eltechs/axs/KeyCodesX;I)V

    const/16 v2, 0x42f

    aput-object v1, v0, v2

    .line 703
    iget-object v0, p0, Lcom/eltechs/axs/Keyboard;->UnicodeToXKeyMap:[Lcom/eltechs/axs/Keyboard$XKey;

    new-instance v1, Lcom/eltechs/axs/Keyboard$XKey;

    sget-object v2, Lcom/eltechs/axs/KeyCodesX;->KEY_J:Lcom/eltechs/axs/KeyCodesX;

    const/16 v3, 0x6c1

    invoke-direct {v1, p0, v2, v3}, Lcom/eltechs/axs/Keyboard$XKey;-><init>(Lcom/eltechs/axs/Keyboard;Lcom/eltechs/axs/KeyCodesX;I)V

    const/16 v2, 0x430

    aput-object v1, v0, v2

    .line 704
    iget-object v0, p0, Lcom/eltechs/axs/Keyboard;->UnicodeToXKeyMap:[Lcom/eltechs/axs/Keyboard$XKey;

    new-instance v1, Lcom/eltechs/axs/Keyboard$XKey;

    sget-object v2, Lcom/eltechs/axs/KeyCodesX;->KEY_K:Lcom/eltechs/axs/KeyCodesX;

    const/16 v3, 0x6c2

    invoke-direct {v1, p0, v2, v3}, Lcom/eltechs/axs/Keyboard$XKey;-><init>(Lcom/eltechs/axs/Keyboard;Lcom/eltechs/axs/KeyCodesX;I)V

    const/16 v2, 0x431

    aput-object v1, v0, v2

    .line 705
    iget-object v0, p0, Lcom/eltechs/axs/Keyboard;->UnicodeToXKeyMap:[Lcom/eltechs/axs/Keyboard$XKey;

    new-instance v1, Lcom/eltechs/axs/Keyboard$XKey;

    sget-object v2, Lcom/eltechs/axs/KeyCodesX;->KEY_L:Lcom/eltechs/axs/KeyCodesX;

    const/16 v3, 0x6d7

    invoke-direct {v1, p0, v2, v3}, Lcom/eltechs/axs/Keyboard$XKey;-><init>(Lcom/eltechs/axs/Keyboard;Lcom/eltechs/axs/KeyCodesX;I)V

    const/16 v2, 0x432

    aput-object v1, v0, v2

    .line 706
    iget-object v0, p0, Lcom/eltechs/axs/Keyboard;->UnicodeToXKeyMap:[Lcom/eltechs/axs/Keyboard$XKey;

    new-instance v1, Lcom/eltechs/axs/Keyboard$XKey;

    sget-object v2, Lcom/eltechs/axs/KeyCodesX;->KEY_M:Lcom/eltechs/axs/KeyCodesX;

    const/16 v3, 0x6c7

    invoke-direct {v1, p0, v2, v3}, Lcom/eltechs/axs/Keyboard$XKey;-><init>(Lcom/eltechs/axs/Keyboard;Lcom/eltechs/axs/KeyCodesX;I)V

    const/16 v2, 0x433

    aput-object v1, v0, v2

    .line 707
    iget-object v0, p0, Lcom/eltechs/axs/Keyboard;->UnicodeToXKeyMap:[Lcom/eltechs/axs/Keyboard$XKey;

    new-instance v1, Lcom/eltechs/axs/Keyboard$XKey;

    sget-object v2, Lcom/eltechs/axs/KeyCodesX;->KEY_N:Lcom/eltechs/axs/KeyCodesX;

    const/16 v3, 0x6c4

    invoke-direct {v1, p0, v2, v3}, Lcom/eltechs/axs/Keyboard$XKey;-><init>(Lcom/eltechs/axs/Keyboard;Lcom/eltechs/axs/KeyCodesX;I)V

    const/16 v2, 0x434

    aput-object v1, v0, v2

    .line 708
    iget-object v0, p0, Lcom/eltechs/axs/Keyboard;->UnicodeToXKeyMap:[Lcom/eltechs/axs/Keyboard$XKey;

    new-instance v1, Lcom/eltechs/axs/Keyboard$XKey;

    sget-object v2, Lcom/eltechs/axs/KeyCodesX;->KEY_O:Lcom/eltechs/axs/KeyCodesX;

    const/16 v3, 0x6c5

    invoke-direct {v1, p0, v2, v3}, Lcom/eltechs/axs/Keyboard$XKey;-><init>(Lcom/eltechs/axs/Keyboard;Lcom/eltechs/axs/KeyCodesX;I)V

    const/16 v2, 0x435

    aput-object v1, v0, v2

    .line 709
    iget-object v0, p0, Lcom/eltechs/axs/Keyboard;->UnicodeToXKeyMap:[Lcom/eltechs/axs/Keyboard$XKey;

    new-instance v1, Lcom/eltechs/axs/Keyboard$XKey;

    sget-object v2, Lcom/eltechs/axs/KeyCodesX;->KEY_P:Lcom/eltechs/axs/KeyCodesX;

    const/16 v3, 0x6d6

    invoke-direct {v1, p0, v2, v3}, Lcom/eltechs/axs/Keyboard$XKey;-><init>(Lcom/eltechs/axs/Keyboard;Lcom/eltechs/axs/KeyCodesX;I)V

    const/16 v2, 0x436

    aput-object v1, v0, v2

    .line 710
    iget-object v0, p0, Lcom/eltechs/axs/Keyboard;->UnicodeToXKeyMap:[Lcom/eltechs/axs/Keyboard$XKey;

    new-instance v1, Lcom/eltechs/axs/Keyboard$XKey;

    sget-object v2, Lcom/eltechs/axs/KeyCodesX;->KEY_Q:Lcom/eltechs/axs/KeyCodesX;

    const/16 v3, 0x6da

    invoke-direct {v1, p0, v2, v3}, Lcom/eltechs/axs/Keyboard$XKey;-><init>(Lcom/eltechs/axs/Keyboard;Lcom/eltechs/axs/KeyCodesX;I)V

    const/16 v2, 0x437

    aput-object v1, v0, v2

    .line 711
    iget-object v0, p0, Lcom/eltechs/axs/Keyboard;->UnicodeToXKeyMap:[Lcom/eltechs/axs/Keyboard$XKey;

    new-instance v1, Lcom/eltechs/axs/Keyboard$XKey;

    sget-object v2, Lcom/eltechs/axs/KeyCodesX;->KEY_R:Lcom/eltechs/axs/KeyCodesX;

    const/16 v3, 0x6c9

    invoke-direct {v1, p0, v2, v3}, Lcom/eltechs/axs/Keyboard$XKey;-><init>(Lcom/eltechs/axs/Keyboard;Lcom/eltechs/axs/KeyCodesX;I)V

    const/16 v2, 0x438

    aput-object v1, v0, v2

    .line 712
    iget-object v0, p0, Lcom/eltechs/axs/Keyboard;->UnicodeToXKeyMap:[Lcom/eltechs/axs/Keyboard$XKey;

    new-instance v1, Lcom/eltechs/axs/Keyboard$XKey;

    sget-object v2, Lcom/eltechs/axs/KeyCodesX;->KEY_S:Lcom/eltechs/axs/KeyCodesX;

    const/16 v3, 0x6ca

    invoke-direct {v1, p0, v2, v3}, Lcom/eltechs/axs/Keyboard$XKey;-><init>(Lcom/eltechs/axs/Keyboard;Lcom/eltechs/axs/KeyCodesX;I)V

    const/16 v2, 0x439

    aput-object v1, v0, v2

    .line 713
    iget-object v0, p0, Lcom/eltechs/axs/Keyboard;->UnicodeToXKeyMap:[Lcom/eltechs/axs/Keyboard$XKey;

    new-instance v1, Lcom/eltechs/axs/Keyboard$XKey;

    sget-object v2, Lcom/eltechs/axs/KeyCodesX;->KEY_T:Lcom/eltechs/axs/KeyCodesX;

    const/16 v3, 0x6cb

    invoke-direct {v1, p0, v2, v3}, Lcom/eltechs/axs/Keyboard$XKey;-><init>(Lcom/eltechs/axs/Keyboard;Lcom/eltechs/axs/KeyCodesX;I)V

    const/16 v2, 0x43a

    aput-object v1, v0, v2

    .line 714
    iget-object v0, p0, Lcom/eltechs/axs/Keyboard;->UnicodeToXKeyMap:[Lcom/eltechs/axs/Keyboard$XKey;

    new-instance v1, Lcom/eltechs/axs/Keyboard$XKey;

    sget-object v2, Lcom/eltechs/axs/KeyCodesX;->KEY_U:Lcom/eltechs/axs/KeyCodesX;

    const/16 v3, 0x6cc

    invoke-direct {v1, p0, v2, v3}, Lcom/eltechs/axs/Keyboard$XKey;-><init>(Lcom/eltechs/axs/Keyboard;Lcom/eltechs/axs/KeyCodesX;I)V

    const/16 v2, 0x43b

    aput-object v1, v0, v2

    .line 715
    iget-object v0, p0, Lcom/eltechs/axs/Keyboard;->UnicodeToXKeyMap:[Lcom/eltechs/axs/Keyboard$XKey;

    new-instance v1, Lcom/eltechs/axs/Keyboard$XKey;

    sget-object v2, Lcom/eltechs/axs/KeyCodesX;->KEY_V:Lcom/eltechs/axs/KeyCodesX;

    const/16 v3, 0x6cd

    invoke-direct {v1, p0, v2, v3}, Lcom/eltechs/axs/Keyboard$XKey;-><init>(Lcom/eltechs/axs/Keyboard;Lcom/eltechs/axs/KeyCodesX;I)V

    const/16 v2, 0x43c

    aput-object v1, v0, v2

    .line 716
    iget-object v0, p0, Lcom/eltechs/axs/Keyboard;->UnicodeToXKeyMap:[Lcom/eltechs/axs/Keyboard$XKey;

    new-instance v1, Lcom/eltechs/axs/Keyboard$XKey;

    sget-object v2, Lcom/eltechs/axs/KeyCodesX;->KEY_W:Lcom/eltechs/axs/KeyCodesX;

    const/16 v3, 0x6ce

    invoke-direct {v1, p0, v2, v3}, Lcom/eltechs/axs/Keyboard$XKey;-><init>(Lcom/eltechs/axs/Keyboard;Lcom/eltechs/axs/KeyCodesX;I)V

    const/16 v2, 0x43d

    aput-object v1, v0, v2

    .line 717
    iget-object v0, p0, Lcom/eltechs/axs/Keyboard;->UnicodeToXKeyMap:[Lcom/eltechs/axs/Keyboard$XKey;

    new-instance v1, Lcom/eltechs/axs/Keyboard$XKey;

    sget-object v2, Lcom/eltechs/axs/KeyCodesX;->KEY_X:Lcom/eltechs/axs/KeyCodesX;

    const/16 v3, 0x6cf

    invoke-direct {v1, p0, v2, v3}, Lcom/eltechs/axs/Keyboard$XKey;-><init>(Lcom/eltechs/axs/Keyboard;Lcom/eltechs/axs/KeyCodesX;I)V

    const/16 v2, 0x43e

    aput-object v1, v0, v2

    .line 718
    iget-object v0, p0, Lcom/eltechs/axs/Keyboard;->UnicodeToXKeyMap:[Lcom/eltechs/axs/Keyboard$XKey;

    new-instance v1, Lcom/eltechs/axs/Keyboard$XKey;

    sget-object v2, Lcom/eltechs/axs/KeyCodesX;->KEY_Y:Lcom/eltechs/axs/KeyCodesX;

    const/16 v3, 0x6d0

    invoke-direct {v1, p0, v2, v3}, Lcom/eltechs/axs/Keyboard$XKey;-><init>(Lcom/eltechs/axs/Keyboard;Lcom/eltechs/axs/KeyCodesX;I)V

    const/16 v2, 0x43f

    aput-object v1, v0, v2

    .line 719
    iget-object v0, p0, Lcom/eltechs/axs/Keyboard;->UnicodeToXKeyMap:[Lcom/eltechs/axs/Keyboard$XKey;

    new-instance v1, Lcom/eltechs/axs/Keyboard$XKey;

    sget-object v2, Lcom/eltechs/axs/KeyCodesX;->KEY_Z:Lcom/eltechs/axs/KeyCodesX;

    const/16 v3, 0x6d2

    invoke-direct {v1, p0, v2, v3}, Lcom/eltechs/axs/Keyboard$XKey;-><init>(Lcom/eltechs/axs/Keyboard;Lcom/eltechs/axs/KeyCodesX;I)V

    const/16 v2, 0x440

    aput-object v1, v0, v2

    .line 720
    iget-object v0, p0, Lcom/eltechs/axs/Keyboard;->UnicodeToXKeyMap:[Lcom/eltechs/axs/Keyboard$XKey;

    new-instance v1, Lcom/eltechs/axs/Keyboard$XKey;

    sget-object v2, Lcom/eltechs/axs/KeyCodesX;->KEY_A:Lcom/eltechs/axs/KeyCodesX;

    const/16 v3, 0x6d3

    invoke-direct {v1, p0, v2, v3}, Lcom/eltechs/axs/Keyboard$XKey;-><init>(Lcom/eltechs/axs/Keyboard;Lcom/eltechs/axs/KeyCodesX;I)V

    const/16 v2, 0x441

    aput-object v1, v0, v2

    .line 721
    iget-object v0, p0, Lcom/eltechs/axs/Keyboard;->UnicodeToXKeyMap:[Lcom/eltechs/axs/Keyboard$XKey;

    new-instance v1, Lcom/eltechs/axs/Keyboard$XKey;

    sget-object v2, Lcom/eltechs/axs/KeyCodesX;->KEY_B:Lcom/eltechs/axs/KeyCodesX;

    const/16 v3, 0x6d4

    invoke-direct {v1, p0, v2, v3}, Lcom/eltechs/axs/Keyboard$XKey;-><init>(Lcom/eltechs/axs/Keyboard;Lcom/eltechs/axs/KeyCodesX;I)V

    const/16 v2, 0x442

    aput-object v1, v0, v2

    .line 722
    iget-object v0, p0, Lcom/eltechs/axs/Keyboard;->UnicodeToXKeyMap:[Lcom/eltechs/axs/Keyboard$XKey;

    new-instance v1, Lcom/eltechs/axs/Keyboard$XKey;

    sget-object v2, Lcom/eltechs/axs/KeyCodesX;->KEY_C:Lcom/eltechs/axs/KeyCodesX;

    const/16 v3, 0x6d5

    invoke-direct {v1, p0, v2, v3}, Lcom/eltechs/axs/Keyboard$XKey;-><init>(Lcom/eltechs/axs/Keyboard;Lcom/eltechs/axs/KeyCodesX;I)V

    const/16 v2, 0x443

    aput-object v1, v0, v2

    .line 723
    iget-object v0, p0, Lcom/eltechs/axs/Keyboard;->UnicodeToXKeyMap:[Lcom/eltechs/axs/Keyboard$XKey;

    new-instance v1, Lcom/eltechs/axs/Keyboard$XKey;

    sget-object v2, Lcom/eltechs/axs/KeyCodesX;->KEY_D:Lcom/eltechs/axs/KeyCodesX;

    const/16 v3, 0x6c6

    invoke-direct {v1, p0, v2, v3}, Lcom/eltechs/axs/Keyboard$XKey;-><init>(Lcom/eltechs/axs/Keyboard;Lcom/eltechs/axs/KeyCodesX;I)V

    const/16 v2, 0x444

    aput-object v1, v0, v2

    .line 724
    iget-object v0, p0, Lcom/eltechs/axs/Keyboard;->UnicodeToXKeyMap:[Lcom/eltechs/axs/Keyboard$XKey;

    new-instance v1, Lcom/eltechs/axs/Keyboard$XKey;

    sget-object v2, Lcom/eltechs/axs/KeyCodesX;->KEY_E:Lcom/eltechs/axs/KeyCodesX;

    const/16 v3, 0x6c8

    invoke-direct {v1, p0, v2, v3}, Lcom/eltechs/axs/Keyboard$XKey;-><init>(Lcom/eltechs/axs/Keyboard;Lcom/eltechs/axs/KeyCodesX;I)V

    const/16 v2, 0x445

    aput-object v1, v0, v2

    .line 725
    iget-object v0, p0, Lcom/eltechs/axs/Keyboard;->UnicodeToXKeyMap:[Lcom/eltechs/axs/Keyboard$XKey;

    new-instance v1, Lcom/eltechs/axs/Keyboard$XKey;

    sget-object v2, Lcom/eltechs/axs/KeyCodesX;->KEY_F:Lcom/eltechs/axs/KeyCodesX;

    const/16 v3, 0x6c3

    invoke-direct {v1, p0, v2, v3}, Lcom/eltechs/axs/Keyboard$XKey;-><init>(Lcom/eltechs/axs/Keyboard;Lcom/eltechs/axs/KeyCodesX;I)V

    const/16 v2, 0x446

    aput-object v1, v0, v2

    .line 726
    iget-object v0, p0, Lcom/eltechs/axs/Keyboard;->UnicodeToXKeyMap:[Lcom/eltechs/axs/Keyboard$XKey;

    new-instance v1, Lcom/eltechs/axs/Keyboard$XKey;

    sget-object v2, Lcom/eltechs/axs/KeyCodesX;->KEY_G:Lcom/eltechs/axs/KeyCodesX;

    const/16 v3, 0x6de

    invoke-direct {v1, p0, v2, v3}, Lcom/eltechs/axs/Keyboard$XKey;-><init>(Lcom/eltechs/axs/Keyboard;Lcom/eltechs/axs/KeyCodesX;I)V

    const/16 v2, 0x447

    aput-object v1, v0, v2

    .line 727
    iget-object v0, p0, Lcom/eltechs/axs/Keyboard;->UnicodeToXKeyMap:[Lcom/eltechs/axs/Keyboard$XKey;

    new-instance v1, Lcom/eltechs/axs/Keyboard$XKey;

    sget-object v2, Lcom/eltechs/axs/KeyCodesX;->KEY_H:Lcom/eltechs/axs/KeyCodesX;

    const/16 v3, 0x6db

    invoke-direct {v1, p0, v2, v3}, Lcom/eltechs/axs/Keyboard$XKey;-><init>(Lcom/eltechs/axs/Keyboard;Lcom/eltechs/axs/KeyCodesX;I)V

    const/16 v2, 0x448

    aput-object v1, v0, v2

    .line 728
    iget-object v0, p0, Lcom/eltechs/axs/Keyboard;->UnicodeToXKeyMap:[Lcom/eltechs/axs/Keyboard$XKey;

    new-instance v1, Lcom/eltechs/axs/Keyboard$XKey;

    sget-object v2, Lcom/eltechs/axs/KeyCodesX;->KEY_I:Lcom/eltechs/axs/KeyCodesX;

    const/16 v3, 0x6dd

    invoke-direct {v1, p0, v2, v3}, Lcom/eltechs/axs/Keyboard$XKey;-><init>(Lcom/eltechs/axs/Keyboard;Lcom/eltechs/axs/KeyCodesX;I)V

    const/16 v2, 0x449

    aput-object v1, v0, v2

    .line 729
    iget-object v0, p0, Lcom/eltechs/axs/Keyboard;->UnicodeToXKeyMap:[Lcom/eltechs/axs/Keyboard$XKey;

    new-instance v1, Lcom/eltechs/axs/Keyboard$XKey;

    sget-object v2, Lcom/eltechs/axs/KeyCodesX;->KEY_J:Lcom/eltechs/axs/KeyCodesX;

    const/16 v3, 0x6df

    invoke-direct {v1, p0, v2, v3}, Lcom/eltechs/axs/Keyboard$XKey;-><init>(Lcom/eltechs/axs/Keyboard;Lcom/eltechs/axs/KeyCodesX;I)V

    const/16 v2, 0x44a

    aput-object v1, v0, v2

    .line 730
    iget-object v0, p0, Lcom/eltechs/axs/Keyboard;->UnicodeToXKeyMap:[Lcom/eltechs/axs/Keyboard$XKey;

    new-instance v1, Lcom/eltechs/axs/Keyboard$XKey;

    sget-object v2, Lcom/eltechs/axs/KeyCodesX;->KEY_K:Lcom/eltechs/axs/KeyCodesX;

    const/16 v3, 0x6d9

    invoke-direct {v1, p0, v2, v3}, Lcom/eltechs/axs/Keyboard$XKey;-><init>(Lcom/eltechs/axs/Keyboard;Lcom/eltechs/axs/KeyCodesX;I)V

    const/16 v2, 0x44b

    aput-object v1, v0, v2

    .line 731
    iget-object v0, p0, Lcom/eltechs/axs/Keyboard;->UnicodeToXKeyMap:[Lcom/eltechs/axs/Keyboard$XKey;

    new-instance v1, Lcom/eltechs/axs/Keyboard$XKey;

    sget-object v2, Lcom/eltechs/axs/KeyCodesX;->KEY_L:Lcom/eltechs/axs/KeyCodesX;

    const/16 v3, 0x6d8

    invoke-direct {v1, p0, v2, v3}, Lcom/eltechs/axs/Keyboard$XKey;-><init>(Lcom/eltechs/axs/Keyboard;Lcom/eltechs/axs/KeyCodesX;I)V

    const/16 v2, 0x44c

    aput-object v1, v0, v2

    .line 732
    iget-object v0, p0, Lcom/eltechs/axs/Keyboard;->UnicodeToXKeyMap:[Lcom/eltechs/axs/Keyboard$XKey;

    new-instance v1, Lcom/eltechs/axs/Keyboard$XKey;

    sget-object v2, Lcom/eltechs/axs/KeyCodesX;->KEY_M:Lcom/eltechs/axs/KeyCodesX;

    const/16 v3, 0x6dc

    invoke-direct {v1, p0, v2, v3}, Lcom/eltechs/axs/Keyboard$XKey;-><init>(Lcom/eltechs/axs/Keyboard;Lcom/eltechs/axs/KeyCodesX;I)V

    const/16 v2, 0x44d

    aput-object v1, v0, v2

    .line 733
    iget-object v0, p0, Lcom/eltechs/axs/Keyboard;->UnicodeToXKeyMap:[Lcom/eltechs/axs/Keyboard$XKey;

    new-instance v1, Lcom/eltechs/axs/Keyboard$XKey;

    sget-object v2, Lcom/eltechs/axs/KeyCodesX;->KEY_N:Lcom/eltechs/axs/KeyCodesX;

    const/16 v3, 0x6c0

    invoke-direct {v1, p0, v2, v3}, Lcom/eltechs/axs/Keyboard$XKey;-><init>(Lcom/eltechs/axs/Keyboard;Lcom/eltechs/axs/KeyCodesX;I)V

    const/16 v2, 0x44e

    aput-object v1, v0, v2

    .line 734
    iget-object v0, p0, Lcom/eltechs/axs/Keyboard;->UnicodeToXKeyMap:[Lcom/eltechs/axs/Keyboard$XKey;

    new-instance v1, Lcom/eltechs/axs/Keyboard$XKey;

    sget-object v2, Lcom/eltechs/axs/KeyCodesX;->KEY_O:Lcom/eltechs/axs/KeyCodesX;

    const/16 v3, 0x6d1

    invoke-direct {v1, p0, v2, v3}, Lcom/eltechs/axs/Keyboard$XKey;-><init>(Lcom/eltechs/axs/Keyboard;Lcom/eltechs/axs/KeyCodesX;I)V

    const/16 v2, 0x44f

    aput-object v1, v0, v2

    .line 735
    iget-object v0, p0, Lcom/eltechs/axs/Keyboard;->UnicodeToXKeyMap:[Lcom/eltechs/axs/Keyboard$XKey;

    new-instance v1, Lcom/eltechs/axs/Keyboard$XKey;

    sget-object v2, Lcom/eltechs/axs/KeyCodesX;->KEY_P:Lcom/eltechs/axs/KeyCodesX;

    const/16 v3, 0x6a3

    invoke-direct {v1, p0, v2, v3}, Lcom/eltechs/axs/Keyboard$XKey;-><init>(Lcom/eltechs/axs/Keyboard;Lcom/eltechs/axs/KeyCodesX;I)V

    const/16 v2, 0x451

    aput-object v1, v0, v2

    .line 736
    iget-object v0, p0, Lcom/eltechs/axs/Keyboard;->UnicodeToXKeyMap:[Lcom/eltechs/axs/Keyboard$XKey;

    new-instance v1, Lcom/eltechs/axs/Keyboard$XKey;

    sget-object v2, Lcom/eltechs/axs/KeyCodesX;->KEY_Q:Lcom/eltechs/axs/KeyCodesX;

    const/16 v3, 0x6a1

    invoke-direct {v1, p0, v2, v3}, Lcom/eltechs/axs/Keyboard$XKey;-><init>(Lcom/eltechs/axs/Keyboard;Lcom/eltechs/axs/KeyCodesX;I)V

    const/16 v2, 0x452

    aput-object v1, v0, v2

    .line 737
    iget-object v0, p0, Lcom/eltechs/axs/Keyboard;->UnicodeToXKeyMap:[Lcom/eltechs/axs/Keyboard$XKey;

    new-instance v1, Lcom/eltechs/axs/Keyboard$XKey;

    sget-object v2, Lcom/eltechs/axs/KeyCodesX;->KEY_R:Lcom/eltechs/axs/KeyCodesX;

    const/16 v3, 0x6a2

    invoke-direct {v1, p0, v2, v3}, Lcom/eltechs/axs/Keyboard$XKey;-><init>(Lcom/eltechs/axs/Keyboard;Lcom/eltechs/axs/KeyCodesX;I)V

    const/16 v2, 0x453

    aput-object v1, v0, v2

    .line 738
    iget-object v0, p0, Lcom/eltechs/axs/Keyboard;->UnicodeToXKeyMap:[Lcom/eltechs/axs/Keyboard$XKey;

    new-instance v1, Lcom/eltechs/axs/Keyboard$XKey;

    sget-object v2, Lcom/eltechs/axs/KeyCodesX;->KEY_S:Lcom/eltechs/axs/KeyCodesX;

    const/16 v3, 0x6a4

    invoke-direct {v1, p0, v2, v3}, Lcom/eltechs/axs/Keyboard$XKey;-><init>(Lcom/eltechs/axs/Keyboard;Lcom/eltechs/axs/KeyCodesX;I)V

    const/16 v2, 0x454

    aput-object v1, v0, v2

    .line 739
    iget-object v0, p0, Lcom/eltechs/axs/Keyboard;->UnicodeToXKeyMap:[Lcom/eltechs/axs/Keyboard$XKey;

    new-instance v1, Lcom/eltechs/axs/Keyboard$XKey;

    sget-object v2, Lcom/eltechs/axs/KeyCodesX;->KEY_T:Lcom/eltechs/axs/KeyCodesX;

    const/16 v3, 0x6a5

    invoke-direct {v1, p0, v2, v3}, Lcom/eltechs/axs/Keyboard$XKey;-><init>(Lcom/eltechs/axs/Keyboard;Lcom/eltechs/axs/KeyCodesX;I)V

    const/16 v2, 0x455

    aput-object v1, v0, v2

    .line 740
    iget-object v0, p0, Lcom/eltechs/axs/Keyboard;->UnicodeToXKeyMap:[Lcom/eltechs/axs/Keyboard$XKey;

    new-instance v1, Lcom/eltechs/axs/Keyboard$XKey;

    sget-object v2, Lcom/eltechs/axs/KeyCodesX;->KEY_U:Lcom/eltechs/axs/KeyCodesX;

    const/16 v3, 0x6a6

    invoke-direct {v1, p0, v2, v3}, Lcom/eltechs/axs/Keyboard$XKey;-><init>(Lcom/eltechs/axs/Keyboard;Lcom/eltechs/axs/KeyCodesX;I)V

    const/16 v2, 0x456

    aput-object v1, v0, v2

    .line 741
    iget-object v0, p0, Lcom/eltechs/axs/Keyboard;->UnicodeToXKeyMap:[Lcom/eltechs/axs/Keyboard$XKey;

    new-instance v1, Lcom/eltechs/axs/Keyboard$XKey;

    sget-object v2, Lcom/eltechs/axs/KeyCodesX;->KEY_V:Lcom/eltechs/axs/KeyCodesX;

    const/16 v3, 0x6a7

    invoke-direct {v1, p0, v2, v3}, Lcom/eltechs/axs/Keyboard$XKey;-><init>(Lcom/eltechs/axs/Keyboard;Lcom/eltechs/axs/KeyCodesX;I)V

    const/16 v2, 0x457

    aput-object v1, v0, v2

    .line 742
    iget-object v0, p0, Lcom/eltechs/axs/Keyboard;->UnicodeToXKeyMap:[Lcom/eltechs/axs/Keyboard$XKey;

    new-instance v1, Lcom/eltechs/axs/Keyboard$XKey;

    sget-object v2, Lcom/eltechs/axs/KeyCodesX;->KEY_W:Lcom/eltechs/axs/KeyCodesX;

    const/16 v3, 0x6a8

    invoke-direct {v1, p0, v2, v3}, Lcom/eltechs/axs/Keyboard$XKey;-><init>(Lcom/eltechs/axs/Keyboard;Lcom/eltechs/axs/KeyCodesX;I)V

    const/16 v2, 0x458

    aput-object v1, v0, v2

    .line 743
    iget-object v0, p0, Lcom/eltechs/axs/Keyboard;->UnicodeToXKeyMap:[Lcom/eltechs/axs/Keyboard$XKey;

    new-instance v1, Lcom/eltechs/axs/Keyboard$XKey;

    sget-object v2, Lcom/eltechs/axs/KeyCodesX;->KEY_X:Lcom/eltechs/axs/KeyCodesX;

    const/16 v3, 0x6a9

    invoke-direct {v1, p0, v2, v3}, Lcom/eltechs/axs/Keyboard$XKey;-><init>(Lcom/eltechs/axs/Keyboard;Lcom/eltechs/axs/KeyCodesX;I)V

    const/16 v2, 0x459

    aput-object v1, v0, v2

    .line 744
    iget-object v0, p0, Lcom/eltechs/axs/Keyboard;->UnicodeToXKeyMap:[Lcom/eltechs/axs/Keyboard$XKey;

    new-instance v1, Lcom/eltechs/axs/Keyboard$XKey;

    sget-object v2, Lcom/eltechs/axs/KeyCodesX;->KEY_Y:Lcom/eltechs/axs/KeyCodesX;

    const/16 v3, 0x6aa

    invoke-direct {v1, p0, v2, v3}, Lcom/eltechs/axs/Keyboard$XKey;-><init>(Lcom/eltechs/axs/Keyboard;Lcom/eltechs/axs/KeyCodesX;I)V

    const/16 v2, 0x45a

    aput-object v1, v0, v2

    .line 745
    iget-object v0, p0, Lcom/eltechs/axs/Keyboard;->UnicodeToXKeyMap:[Lcom/eltechs/axs/Keyboard$XKey;

    new-instance v1, Lcom/eltechs/axs/Keyboard$XKey;

    sget-object v2, Lcom/eltechs/axs/KeyCodesX;->KEY_Z:Lcom/eltechs/axs/KeyCodesX;

    const/16 v3, 0x6ab

    invoke-direct {v1, p0, v2, v3}, Lcom/eltechs/axs/Keyboard$XKey;-><init>(Lcom/eltechs/axs/Keyboard;Lcom/eltechs/axs/KeyCodesX;I)V

    const/16 v2, 0x45b

    aput-object v1, v0, v2

    .line 746
    iget-object v0, p0, Lcom/eltechs/axs/Keyboard;->UnicodeToXKeyMap:[Lcom/eltechs/axs/Keyboard$XKey;

    new-instance v1, Lcom/eltechs/axs/Keyboard$XKey;

    sget-object v2, Lcom/eltechs/axs/KeyCodesX;->KEY_A:Lcom/eltechs/axs/KeyCodesX;

    const/16 v3, 0x6ac

    invoke-direct {v1, p0, v2, v3}, Lcom/eltechs/axs/Keyboard$XKey;-><init>(Lcom/eltechs/axs/Keyboard;Lcom/eltechs/axs/KeyCodesX;I)V

    const/16 v2, 0x45c

    aput-object v1, v0, v2

    .line 747
    iget-object v0, p0, Lcom/eltechs/axs/Keyboard;->UnicodeToXKeyMap:[Lcom/eltechs/axs/Keyboard$XKey;

    new-instance v1, Lcom/eltechs/axs/Keyboard$XKey;

    sget-object v2, Lcom/eltechs/axs/KeyCodesX;->KEY_B:Lcom/eltechs/axs/KeyCodesX;

    const/16 v3, 0x6ae

    invoke-direct {v1, p0, v2, v3}, Lcom/eltechs/axs/Keyboard$XKey;-><init>(Lcom/eltechs/axs/Keyboard;Lcom/eltechs/axs/KeyCodesX;I)V

    const/16 v2, 0x45e

    aput-object v1, v0, v2

    .line 748
    iget-object v0, p0, Lcom/eltechs/axs/Keyboard;->UnicodeToXKeyMap:[Lcom/eltechs/axs/Keyboard$XKey;

    new-instance v1, Lcom/eltechs/axs/Keyboard$XKey;

    sget-object v2, Lcom/eltechs/axs/KeyCodesX;->KEY_C:Lcom/eltechs/axs/KeyCodesX;

    const/16 v3, 0x6af

    invoke-direct {v1, p0, v2, v3}, Lcom/eltechs/axs/Keyboard$XKey;-><init>(Lcom/eltechs/axs/Keyboard;Lcom/eltechs/axs/KeyCodesX;I)V

    const/16 v2, 0x45f

    aput-object v1, v0, v2

    .line 749
    iget-object v0, p0, Lcom/eltechs/axs/Keyboard;->UnicodeToXKeyMap:[Lcom/eltechs/axs/Keyboard$XKey;

    new-instance v1, Lcom/eltechs/axs/Keyboard$XKey;

    sget-object v2, Lcom/eltechs/axs/KeyCodesX;->KEY_D:Lcom/eltechs/axs/KeyCodesX;

    const/16 v3, 0x6bd

    invoke-direct {v1, p0, v2, v3}, Lcom/eltechs/axs/Keyboard$XKey;-><init>(Lcom/eltechs/axs/Keyboard;Lcom/eltechs/axs/KeyCodesX;I)V

    const/16 v2, 0x490

    aput-object v1, v0, v2

    .line 750
    iget-object v0, p0, Lcom/eltechs/axs/Keyboard;->UnicodeToXKeyMap:[Lcom/eltechs/axs/Keyboard$XKey;

    new-instance v1, Lcom/eltechs/axs/Keyboard$XKey;

    sget-object v2, Lcom/eltechs/axs/KeyCodesX;->KEY_E:Lcom/eltechs/axs/KeyCodesX;

    const/16 v3, 0x6ad

    invoke-direct {v1, p0, v2, v3}, Lcom/eltechs/axs/Keyboard$XKey;-><init>(Lcom/eltechs/axs/Keyboard;Lcom/eltechs/axs/KeyCodesX;I)V

    const/16 v2, 0x491

    aput-object v1, v0, v2

    .line 751
    iget-object v0, p0, Lcom/eltechs/axs/Keyboard;->UnicodeToXKeyMap:[Lcom/eltechs/axs/Keyboard$XKey;

    new-instance v1, Lcom/eltechs/axs/Keyboard$XKey;

    sget-object v2, Lcom/eltechs/axs/KeyCodesX;->KEY_F:Lcom/eltechs/axs/KeyCodesX;

    const/16 v3, 0xce0

    invoke-direct {v1, p0, v2, v3}, Lcom/eltechs/axs/Keyboard$XKey;-><init>(Lcom/eltechs/axs/Keyboard;Lcom/eltechs/axs/KeyCodesX;I)V

    const/16 v2, 0x5d0

    aput-object v1, v0, v2

    .line 752
    iget-object v0, p0, Lcom/eltechs/axs/Keyboard;->UnicodeToXKeyMap:[Lcom/eltechs/axs/Keyboard$XKey;

    new-instance v1, Lcom/eltechs/axs/Keyboard$XKey;

    sget-object v2, Lcom/eltechs/axs/KeyCodesX;->KEY_G:Lcom/eltechs/axs/KeyCodesX;

    const/16 v3, 0xce1

    invoke-direct {v1, p0, v2, v3}, Lcom/eltechs/axs/Keyboard$XKey;-><init>(Lcom/eltechs/axs/Keyboard;Lcom/eltechs/axs/KeyCodesX;I)V

    const/16 v2, 0x5d1

    aput-object v1, v0, v2

    .line 753
    iget-object v0, p0, Lcom/eltechs/axs/Keyboard;->UnicodeToXKeyMap:[Lcom/eltechs/axs/Keyboard$XKey;

    new-instance v1, Lcom/eltechs/axs/Keyboard$XKey;

    sget-object v2, Lcom/eltechs/axs/KeyCodesX;->KEY_H:Lcom/eltechs/axs/KeyCodesX;

    const/16 v3, 0xce2

    invoke-direct {v1, p0, v2, v3}, Lcom/eltechs/axs/Keyboard$XKey;-><init>(Lcom/eltechs/axs/Keyboard;Lcom/eltechs/axs/KeyCodesX;I)V

    const/16 v2, 0x5d2

    aput-object v1, v0, v2

    .line 754
    iget-object v0, p0, Lcom/eltechs/axs/Keyboard;->UnicodeToXKeyMap:[Lcom/eltechs/axs/Keyboard$XKey;

    new-instance v1, Lcom/eltechs/axs/Keyboard$XKey;

    sget-object v2, Lcom/eltechs/axs/KeyCodesX;->KEY_I:Lcom/eltechs/axs/KeyCodesX;

    const/16 v3, 0xce3

    invoke-direct {v1, p0, v2, v3}, Lcom/eltechs/axs/Keyboard$XKey;-><init>(Lcom/eltechs/axs/Keyboard;Lcom/eltechs/axs/KeyCodesX;I)V

    const/16 v2, 0x5d3

    aput-object v1, v0, v2

    .line 755
    iget-object v0, p0, Lcom/eltechs/axs/Keyboard;->UnicodeToXKeyMap:[Lcom/eltechs/axs/Keyboard$XKey;

    new-instance v1, Lcom/eltechs/axs/Keyboard$XKey;

    sget-object v2, Lcom/eltechs/axs/KeyCodesX;->KEY_J:Lcom/eltechs/axs/KeyCodesX;

    const/16 v3, 0xce4

    invoke-direct {v1, p0, v2, v3}, Lcom/eltechs/axs/Keyboard$XKey;-><init>(Lcom/eltechs/axs/Keyboard;Lcom/eltechs/axs/KeyCodesX;I)V

    const/16 v2, 0x5d4

    aput-object v1, v0, v2

    .line 756
    iget-object v0, p0, Lcom/eltechs/axs/Keyboard;->UnicodeToXKeyMap:[Lcom/eltechs/axs/Keyboard$XKey;

    new-instance v1, Lcom/eltechs/axs/Keyboard$XKey;

    sget-object v2, Lcom/eltechs/axs/KeyCodesX;->KEY_K:Lcom/eltechs/axs/KeyCodesX;

    const/16 v3, 0xce5

    invoke-direct {v1, p0, v2, v3}, Lcom/eltechs/axs/Keyboard$XKey;-><init>(Lcom/eltechs/axs/Keyboard;Lcom/eltechs/axs/KeyCodesX;I)V

    const/16 v2, 0x5d5

    aput-object v1, v0, v2

    .line 757
    iget-object v0, p0, Lcom/eltechs/axs/Keyboard;->UnicodeToXKeyMap:[Lcom/eltechs/axs/Keyboard$XKey;

    new-instance v1, Lcom/eltechs/axs/Keyboard$XKey;

    sget-object v2, Lcom/eltechs/axs/KeyCodesX;->KEY_L:Lcom/eltechs/axs/KeyCodesX;

    const/16 v3, 0xce6

    invoke-direct {v1, p0, v2, v3}, Lcom/eltechs/axs/Keyboard$XKey;-><init>(Lcom/eltechs/axs/Keyboard;Lcom/eltechs/axs/KeyCodesX;I)V

    const/16 v2, 0x5d6

    aput-object v1, v0, v2

    .line 758
    iget-object v0, p0, Lcom/eltechs/axs/Keyboard;->UnicodeToXKeyMap:[Lcom/eltechs/axs/Keyboard$XKey;

    new-instance v1, Lcom/eltechs/axs/Keyboard$XKey;

    sget-object v2, Lcom/eltechs/axs/KeyCodesX;->KEY_M:Lcom/eltechs/axs/KeyCodesX;

    const/16 v3, 0xce7

    invoke-direct {v1, p0, v2, v3}, Lcom/eltechs/axs/Keyboard$XKey;-><init>(Lcom/eltechs/axs/Keyboard;Lcom/eltechs/axs/KeyCodesX;I)V

    const/16 v2, 0x5d7

    aput-object v1, v0, v2

    .line 759
    iget-object v0, p0, Lcom/eltechs/axs/Keyboard;->UnicodeToXKeyMap:[Lcom/eltechs/axs/Keyboard$XKey;

    new-instance v1, Lcom/eltechs/axs/Keyboard$XKey;

    sget-object v2, Lcom/eltechs/axs/KeyCodesX;->KEY_N:Lcom/eltechs/axs/KeyCodesX;

    const/16 v3, 0xce8

    invoke-direct {v1, p0, v2, v3}, Lcom/eltechs/axs/Keyboard$XKey;-><init>(Lcom/eltechs/axs/Keyboard;Lcom/eltechs/axs/KeyCodesX;I)V

    const/16 v2, 0x5d8

    aput-object v1, v0, v2

    .line 760
    iget-object v0, p0, Lcom/eltechs/axs/Keyboard;->UnicodeToXKeyMap:[Lcom/eltechs/axs/Keyboard$XKey;

    new-instance v1, Lcom/eltechs/axs/Keyboard$XKey;

    sget-object v2, Lcom/eltechs/axs/KeyCodesX;->KEY_O:Lcom/eltechs/axs/KeyCodesX;

    const/16 v3, 0xce9

    invoke-direct {v1, p0, v2, v3}, Lcom/eltechs/axs/Keyboard$XKey;-><init>(Lcom/eltechs/axs/Keyboard;Lcom/eltechs/axs/KeyCodesX;I)V

    const/16 v2, 0x5d9

    aput-object v1, v0, v2

    .line 761
    iget-object v0, p0, Lcom/eltechs/axs/Keyboard;->UnicodeToXKeyMap:[Lcom/eltechs/axs/Keyboard$XKey;

    new-instance v1, Lcom/eltechs/axs/Keyboard$XKey;

    sget-object v2, Lcom/eltechs/axs/KeyCodesX;->KEY_P:Lcom/eltechs/axs/KeyCodesX;

    const/16 v3, 0xcea

    invoke-direct {v1, p0, v2, v3}, Lcom/eltechs/axs/Keyboard$XKey;-><init>(Lcom/eltechs/axs/Keyboard;Lcom/eltechs/axs/KeyCodesX;I)V

    const/16 v2, 0x5da

    aput-object v1, v0, v2

    .line 762
    iget-object v0, p0, Lcom/eltechs/axs/Keyboard;->UnicodeToXKeyMap:[Lcom/eltechs/axs/Keyboard$XKey;

    new-instance v1, Lcom/eltechs/axs/Keyboard$XKey;

    sget-object v2, Lcom/eltechs/axs/KeyCodesX;->KEY_Q:Lcom/eltechs/axs/KeyCodesX;

    const/16 v3, 0xceb

    invoke-direct {v1, p0, v2, v3}, Lcom/eltechs/axs/Keyboard$XKey;-><init>(Lcom/eltechs/axs/Keyboard;Lcom/eltechs/axs/KeyCodesX;I)V

    const/16 v2, 0x5db

    aput-object v1, v0, v2

    .line 763
    iget-object v0, p0, Lcom/eltechs/axs/Keyboard;->UnicodeToXKeyMap:[Lcom/eltechs/axs/Keyboard$XKey;

    new-instance v1, Lcom/eltechs/axs/Keyboard$XKey;

    sget-object v2, Lcom/eltechs/axs/KeyCodesX;->KEY_R:Lcom/eltechs/axs/KeyCodesX;

    const/16 v3, 0xcec

    invoke-direct {v1, p0, v2, v3}, Lcom/eltechs/axs/Keyboard$XKey;-><init>(Lcom/eltechs/axs/Keyboard;Lcom/eltechs/axs/KeyCodesX;I)V

    const/16 v2, 0x5dc

    aput-object v1, v0, v2

    .line 764
    iget-object v0, p0, Lcom/eltechs/axs/Keyboard;->UnicodeToXKeyMap:[Lcom/eltechs/axs/Keyboard$XKey;

    new-instance v1, Lcom/eltechs/axs/Keyboard$XKey;

    sget-object v2, Lcom/eltechs/axs/KeyCodesX;->KEY_S:Lcom/eltechs/axs/KeyCodesX;

    const/16 v3, 0xced

    invoke-direct {v1, p0, v2, v3}, Lcom/eltechs/axs/Keyboard$XKey;-><init>(Lcom/eltechs/axs/Keyboard;Lcom/eltechs/axs/KeyCodesX;I)V

    const/16 v2, 0x5dd

    aput-object v1, v0, v2

    .line 765
    iget-object v0, p0, Lcom/eltechs/axs/Keyboard;->UnicodeToXKeyMap:[Lcom/eltechs/axs/Keyboard$XKey;

    new-instance v1, Lcom/eltechs/axs/Keyboard$XKey;

    sget-object v2, Lcom/eltechs/axs/KeyCodesX;->KEY_T:Lcom/eltechs/axs/KeyCodesX;

    const/16 v3, 0xcee

    invoke-direct {v1, p0, v2, v3}, Lcom/eltechs/axs/Keyboard$XKey;-><init>(Lcom/eltechs/axs/Keyboard;Lcom/eltechs/axs/KeyCodesX;I)V

    const/16 v2, 0x5de

    aput-object v1, v0, v2

    .line 766
    iget-object v0, p0, Lcom/eltechs/axs/Keyboard;->UnicodeToXKeyMap:[Lcom/eltechs/axs/Keyboard$XKey;

    new-instance v1, Lcom/eltechs/axs/Keyboard$XKey;

    sget-object v2, Lcom/eltechs/axs/KeyCodesX;->KEY_U:Lcom/eltechs/axs/KeyCodesX;

    const/16 v3, 0xcef

    invoke-direct {v1, p0, v2, v3}, Lcom/eltechs/axs/Keyboard$XKey;-><init>(Lcom/eltechs/axs/Keyboard;Lcom/eltechs/axs/KeyCodesX;I)V

    const/16 v2, 0x5df

    aput-object v1, v0, v2

    .line 767
    iget-object v0, p0, Lcom/eltechs/axs/Keyboard;->UnicodeToXKeyMap:[Lcom/eltechs/axs/Keyboard$XKey;

    new-instance v1, Lcom/eltechs/axs/Keyboard$XKey;

    sget-object v2, Lcom/eltechs/axs/KeyCodesX;->KEY_V:Lcom/eltechs/axs/KeyCodesX;

    const/16 v3, 0xcf0

    invoke-direct {v1, p0, v2, v3}, Lcom/eltechs/axs/Keyboard$XKey;-><init>(Lcom/eltechs/axs/Keyboard;Lcom/eltechs/axs/KeyCodesX;I)V

    const/16 v2, 0x5e0

    aput-object v1, v0, v2

    .line 768
    iget-object v0, p0, Lcom/eltechs/axs/Keyboard;->UnicodeToXKeyMap:[Lcom/eltechs/axs/Keyboard$XKey;

    new-instance v1, Lcom/eltechs/axs/Keyboard$XKey;

    sget-object v2, Lcom/eltechs/axs/KeyCodesX;->KEY_W:Lcom/eltechs/axs/KeyCodesX;

    const/16 v3, 0xcf1

    invoke-direct {v1, p0, v2, v3}, Lcom/eltechs/axs/Keyboard$XKey;-><init>(Lcom/eltechs/axs/Keyboard;Lcom/eltechs/axs/KeyCodesX;I)V

    const/16 v2, 0x5e1

    aput-object v1, v0, v2

    .line 769
    iget-object v0, p0, Lcom/eltechs/axs/Keyboard;->UnicodeToXKeyMap:[Lcom/eltechs/axs/Keyboard$XKey;

    new-instance v1, Lcom/eltechs/axs/Keyboard$XKey;

    sget-object v2, Lcom/eltechs/axs/KeyCodesX;->KEY_X:Lcom/eltechs/axs/KeyCodesX;

    const/16 v3, 0xcf2

    invoke-direct {v1, p0, v2, v3}, Lcom/eltechs/axs/Keyboard$XKey;-><init>(Lcom/eltechs/axs/Keyboard;Lcom/eltechs/axs/KeyCodesX;I)V

    const/16 v2, 0x5e2

    aput-object v1, v0, v2

    .line 770
    iget-object v0, p0, Lcom/eltechs/axs/Keyboard;->UnicodeToXKeyMap:[Lcom/eltechs/axs/Keyboard$XKey;

    new-instance v1, Lcom/eltechs/axs/Keyboard$XKey;

    sget-object v2, Lcom/eltechs/axs/KeyCodesX;->KEY_Y:Lcom/eltechs/axs/KeyCodesX;

    const/16 v3, 0xcf3

    invoke-direct {v1, p0, v2, v3}, Lcom/eltechs/axs/Keyboard$XKey;-><init>(Lcom/eltechs/axs/Keyboard;Lcom/eltechs/axs/KeyCodesX;I)V

    const/16 v2, 0x5e3

    aput-object v1, v0, v2

    .line 771
    iget-object v0, p0, Lcom/eltechs/axs/Keyboard;->UnicodeToXKeyMap:[Lcom/eltechs/axs/Keyboard$XKey;

    new-instance v1, Lcom/eltechs/axs/Keyboard$XKey;

    sget-object v2, Lcom/eltechs/axs/KeyCodesX;->KEY_Z:Lcom/eltechs/axs/KeyCodesX;

    const/16 v3, 0xcf4

    invoke-direct {v1, p0, v2, v3}, Lcom/eltechs/axs/Keyboard$XKey;-><init>(Lcom/eltechs/axs/Keyboard;Lcom/eltechs/axs/KeyCodesX;I)V

    const/16 v2, 0x5e4

    aput-object v1, v0, v2

    .line 772
    iget-object v0, p0, Lcom/eltechs/axs/Keyboard;->UnicodeToXKeyMap:[Lcom/eltechs/axs/Keyboard$XKey;

    new-instance v1, Lcom/eltechs/axs/Keyboard$XKey;

    sget-object v2, Lcom/eltechs/axs/KeyCodesX;->KEY_A:Lcom/eltechs/axs/KeyCodesX;

    const/16 v3, 0xcf5

    invoke-direct {v1, p0, v2, v3}, Lcom/eltechs/axs/Keyboard$XKey;-><init>(Lcom/eltechs/axs/Keyboard;Lcom/eltechs/axs/KeyCodesX;I)V

    const/16 v2, 0x5e5

    aput-object v1, v0, v2

    .line 773
    iget-object v0, p0, Lcom/eltechs/axs/Keyboard;->UnicodeToXKeyMap:[Lcom/eltechs/axs/Keyboard$XKey;

    new-instance v1, Lcom/eltechs/axs/Keyboard$XKey;

    sget-object v2, Lcom/eltechs/axs/KeyCodesX;->KEY_B:Lcom/eltechs/axs/KeyCodesX;

    const/16 v3, 0xcf6

    invoke-direct {v1, p0, v2, v3}, Lcom/eltechs/axs/Keyboard$XKey;-><init>(Lcom/eltechs/axs/Keyboard;Lcom/eltechs/axs/KeyCodesX;I)V

    const/16 v2, 0x5e6

    aput-object v1, v0, v2

    .line 774
    iget-object v0, p0, Lcom/eltechs/axs/Keyboard;->UnicodeToXKeyMap:[Lcom/eltechs/axs/Keyboard$XKey;

    new-instance v1, Lcom/eltechs/axs/Keyboard$XKey;

    sget-object v2, Lcom/eltechs/axs/KeyCodesX;->KEY_C:Lcom/eltechs/axs/KeyCodesX;

    const/16 v3, 0xcf7

    invoke-direct {v1, p0, v2, v3}, Lcom/eltechs/axs/Keyboard$XKey;-><init>(Lcom/eltechs/axs/Keyboard;Lcom/eltechs/axs/KeyCodesX;I)V

    const/16 v2, 0x5e7

    aput-object v1, v0, v2

    .line 775
    iget-object v0, p0, Lcom/eltechs/axs/Keyboard;->UnicodeToXKeyMap:[Lcom/eltechs/axs/Keyboard$XKey;

    new-instance v1, Lcom/eltechs/axs/Keyboard$XKey;

    sget-object v2, Lcom/eltechs/axs/KeyCodesX;->KEY_D:Lcom/eltechs/axs/KeyCodesX;

    const/16 v3, 0xcf8

    invoke-direct {v1, p0, v2, v3}, Lcom/eltechs/axs/Keyboard$XKey;-><init>(Lcom/eltechs/axs/Keyboard;Lcom/eltechs/axs/KeyCodesX;I)V

    const/16 v2, 0x5e8

    aput-object v1, v0, v2

    .line 776
    iget-object v0, p0, Lcom/eltechs/axs/Keyboard;->UnicodeToXKeyMap:[Lcom/eltechs/axs/Keyboard$XKey;

    new-instance v1, Lcom/eltechs/axs/Keyboard$XKey;

    sget-object v2, Lcom/eltechs/axs/KeyCodesX;->KEY_E:Lcom/eltechs/axs/KeyCodesX;

    const/16 v3, 0xcf9

    invoke-direct {v1, p0, v2, v3}, Lcom/eltechs/axs/Keyboard$XKey;-><init>(Lcom/eltechs/axs/Keyboard;Lcom/eltechs/axs/KeyCodesX;I)V

    const/16 v2, 0x5e9

    aput-object v1, v0, v2

    .line 777
    iget-object v0, p0, Lcom/eltechs/axs/Keyboard;->UnicodeToXKeyMap:[Lcom/eltechs/axs/Keyboard$XKey;

    new-instance v1, Lcom/eltechs/axs/Keyboard$XKey;

    sget-object v2, Lcom/eltechs/axs/KeyCodesX;->KEY_F:Lcom/eltechs/axs/KeyCodesX;

    const/16 v3, 0xcfa

    invoke-direct {v1, p0, v2, v3}, Lcom/eltechs/axs/Keyboard$XKey;-><init>(Lcom/eltechs/axs/Keyboard;Lcom/eltechs/axs/KeyCodesX;I)V

    const/16 v2, 0x5ea

    aput-object v1, v0, v2

    .line 778
    iget-object v0, p0, Lcom/eltechs/axs/Keyboard;->UnicodeToXKeyMap:[Lcom/eltechs/axs/Keyboard$XKey;

    new-instance v1, Lcom/eltechs/axs/Keyboard$XKey;

    sget-object v2, Lcom/eltechs/axs/KeyCodesX;->KEY_G:Lcom/eltechs/axs/KeyCodesX;

    const/16 v3, 0x5ac

    invoke-direct {v1, p0, v2, v3}, Lcom/eltechs/axs/Keyboard$XKey;-><init>(Lcom/eltechs/axs/Keyboard;Lcom/eltechs/axs/KeyCodesX;I)V

    const/16 v2, 0x60c

    aput-object v1, v0, v2

    .line 779
    iget-object v0, p0, Lcom/eltechs/axs/Keyboard;->UnicodeToXKeyMap:[Lcom/eltechs/axs/Keyboard$XKey;

    new-instance v1, Lcom/eltechs/axs/Keyboard$XKey;

    sget-object v2, Lcom/eltechs/axs/KeyCodesX;->KEY_H:Lcom/eltechs/axs/KeyCodesX;

    const/16 v3, 0x5bb

    invoke-direct {v1, p0, v2, v3}, Lcom/eltechs/axs/Keyboard$XKey;-><init>(Lcom/eltechs/axs/Keyboard;Lcom/eltechs/axs/KeyCodesX;I)V

    const/16 v2, 0x61b

    aput-object v1, v0, v2

    .line 780
    iget-object v0, p0, Lcom/eltechs/axs/Keyboard;->UnicodeToXKeyMap:[Lcom/eltechs/axs/Keyboard$XKey;

    new-instance v1, Lcom/eltechs/axs/Keyboard$XKey;

    sget-object v2, Lcom/eltechs/axs/KeyCodesX;->KEY_I:Lcom/eltechs/axs/KeyCodesX;

    const/16 v3, 0x5bf

    invoke-direct {v1, p0, v2, v3}, Lcom/eltechs/axs/Keyboard$XKey;-><init>(Lcom/eltechs/axs/Keyboard;Lcom/eltechs/axs/KeyCodesX;I)V

    const/16 v2, 0x61f

    aput-object v1, v0, v2

    .line 781
    iget-object v0, p0, Lcom/eltechs/axs/Keyboard;->UnicodeToXKeyMap:[Lcom/eltechs/axs/Keyboard$XKey;

    new-instance v1, Lcom/eltechs/axs/Keyboard$XKey;

    sget-object v2, Lcom/eltechs/axs/KeyCodesX;->KEY_J:Lcom/eltechs/axs/KeyCodesX;

    const/16 v3, 0x5c1

    invoke-direct {v1, p0, v2, v3}, Lcom/eltechs/axs/Keyboard$XKey;-><init>(Lcom/eltechs/axs/Keyboard;Lcom/eltechs/axs/KeyCodesX;I)V

    const/16 v2, 0x621

    aput-object v1, v0, v2

    .line 782
    iget-object v0, p0, Lcom/eltechs/axs/Keyboard;->UnicodeToXKeyMap:[Lcom/eltechs/axs/Keyboard$XKey;

    new-instance v1, Lcom/eltechs/axs/Keyboard$XKey;

    sget-object v2, Lcom/eltechs/axs/KeyCodesX;->KEY_K:Lcom/eltechs/axs/KeyCodesX;

    const/16 v3, 0x5c2

    invoke-direct {v1, p0, v2, v3}, Lcom/eltechs/axs/Keyboard$XKey;-><init>(Lcom/eltechs/axs/Keyboard;Lcom/eltechs/axs/KeyCodesX;I)V

    const/16 v2, 0x622

    aput-object v1, v0, v2

    .line 783
    iget-object v0, p0, Lcom/eltechs/axs/Keyboard;->UnicodeToXKeyMap:[Lcom/eltechs/axs/Keyboard$XKey;

    new-instance v1, Lcom/eltechs/axs/Keyboard$XKey;

    sget-object v2, Lcom/eltechs/axs/KeyCodesX;->KEY_L:Lcom/eltechs/axs/KeyCodesX;

    const/16 v3, 0x5c3

    invoke-direct {v1, p0, v2, v3}, Lcom/eltechs/axs/Keyboard$XKey;-><init>(Lcom/eltechs/axs/Keyboard;Lcom/eltechs/axs/KeyCodesX;I)V

    const/16 v2, 0x623

    aput-object v1, v0, v2

    .line 784
    iget-object v0, p0, Lcom/eltechs/axs/Keyboard;->UnicodeToXKeyMap:[Lcom/eltechs/axs/Keyboard$XKey;

    new-instance v1, Lcom/eltechs/axs/Keyboard$XKey;

    sget-object v2, Lcom/eltechs/axs/KeyCodesX;->KEY_M:Lcom/eltechs/axs/KeyCodesX;

    const/16 v3, 0x5c4

    invoke-direct {v1, p0, v2, v3}, Lcom/eltechs/axs/Keyboard$XKey;-><init>(Lcom/eltechs/axs/Keyboard;Lcom/eltechs/axs/KeyCodesX;I)V

    const/16 v2, 0x624

    aput-object v1, v0, v2

    .line 785
    iget-object v0, p0, Lcom/eltechs/axs/Keyboard;->UnicodeToXKeyMap:[Lcom/eltechs/axs/Keyboard$XKey;

    new-instance v1, Lcom/eltechs/axs/Keyboard$XKey;

    sget-object v2, Lcom/eltechs/axs/KeyCodesX;->KEY_N:Lcom/eltechs/axs/KeyCodesX;

    const/16 v3, 0x5c5

    invoke-direct {v1, p0, v2, v3}, Lcom/eltechs/axs/Keyboard$XKey;-><init>(Lcom/eltechs/axs/Keyboard;Lcom/eltechs/axs/KeyCodesX;I)V

    const/16 v2, 0x625

    aput-object v1, v0, v2

    .line 786
    iget-object v0, p0, Lcom/eltechs/axs/Keyboard;->UnicodeToXKeyMap:[Lcom/eltechs/axs/Keyboard$XKey;

    new-instance v1, Lcom/eltechs/axs/Keyboard$XKey;

    sget-object v2, Lcom/eltechs/axs/KeyCodesX;->KEY_O:Lcom/eltechs/axs/KeyCodesX;

    const/16 v3, 0x5c6

    invoke-direct {v1, p0, v2, v3}, Lcom/eltechs/axs/Keyboard$XKey;-><init>(Lcom/eltechs/axs/Keyboard;Lcom/eltechs/axs/KeyCodesX;I)V

    const/16 v2, 0x626

    aput-object v1, v0, v2

    .line 787
    iget-object v0, p0, Lcom/eltechs/axs/Keyboard;->UnicodeToXKeyMap:[Lcom/eltechs/axs/Keyboard$XKey;

    new-instance v1, Lcom/eltechs/axs/Keyboard$XKey;

    sget-object v2, Lcom/eltechs/axs/KeyCodesX;->KEY_P:Lcom/eltechs/axs/KeyCodesX;

    const/16 v3, 0x5c7

    invoke-direct {v1, p0, v2, v3}, Lcom/eltechs/axs/Keyboard$XKey;-><init>(Lcom/eltechs/axs/Keyboard;Lcom/eltechs/axs/KeyCodesX;I)V

    const/16 v2, 0x627

    aput-object v1, v0, v2

    .line 788
    iget-object v0, p0, Lcom/eltechs/axs/Keyboard;->UnicodeToXKeyMap:[Lcom/eltechs/axs/Keyboard$XKey;

    new-instance v1, Lcom/eltechs/axs/Keyboard$XKey;

    sget-object v2, Lcom/eltechs/axs/KeyCodesX;->KEY_Q:Lcom/eltechs/axs/KeyCodesX;

    const/16 v3, 0x5c8

    invoke-direct {v1, p0, v2, v3}, Lcom/eltechs/axs/Keyboard$XKey;-><init>(Lcom/eltechs/axs/Keyboard;Lcom/eltechs/axs/KeyCodesX;I)V

    const/16 v2, 0x628

    aput-object v1, v0, v2

    .line 789
    iget-object v0, p0, Lcom/eltechs/axs/Keyboard;->UnicodeToXKeyMap:[Lcom/eltechs/axs/Keyboard$XKey;

    new-instance v1, Lcom/eltechs/axs/Keyboard$XKey;

    sget-object v2, Lcom/eltechs/axs/KeyCodesX;->KEY_R:Lcom/eltechs/axs/KeyCodesX;

    const/16 v3, 0x5c9

    invoke-direct {v1, p0, v2, v3}, Lcom/eltechs/axs/Keyboard$XKey;-><init>(Lcom/eltechs/axs/Keyboard;Lcom/eltechs/axs/KeyCodesX;I)V

    const/16 v2, 0x629

    aput-object v1, v0, v2

    .line 790
    iget-object v0, p0, Lcom/eltechs/axs/Keyboard;->UnicodeToXKeyMap:[Lcom/eltechs/axs/Keyboard$XKey;

    new-instance v1, Lcom/eltechs/axs/Keyboard$XKey;

    sget-object v2, Lcom/eltechs/axs/KeyCodesX;->KEY_S:Lcom/eltechs/axs/KeyCodesX;

    const/16 v3, 0x5ca

    invoke-direct {v1, p0, v2, v3}, Lcom/eltechs/axs/Keyboard$XKey;-><init>(Lcom/eltechs/axs/Keyboard;Lcom/eltechs/axs/KeyCodesX;I)V

    const/16 v2, 0x62a

    aput-object v1, v0, v2

    .line 791
    iget-object v0, p0, Lcom/eltechs/axs/Keyboard;->UnicodeToXKeyMap:[Lcom/eltechs/axs/Keyboard$XKey;

    new-instance v1, Lcom/eltechs/axs/Keyboard$XKey;

    sget-object v2, Lcom/eltechs/axs/KeyCodesX;->KEY_T:Lcom/eltechs/axs/KeyCodesX;

    const/16 v3, 0x5cb

    invoke-direct {v1, p0, v2, v3}, Lcom/eltechs/axs/Keyboard$XKey;-><init>(Lcom/eltechs/axs/Keyboard;Lcom/eltechs/axs/KeyCodesX;I)V

    const/16 v2, 0x62b

    aput-object v1, v0, v2

    .line 792
    iget-object v0, p0, Lcom/eltechs/axs/Keyboard;->UnicodeToXKeyMap:[Lcom/eltechs/axs/Keyboard$XKey;

    new-instance v1, Lcom/eltechs/axs/Keyboard$XKey;

    sget-object v2, Lcom/eltechs/axs/KeyCodesX;->KEY_U:Lcom/eltechs/axs/KeyCodesX;

    const/16 v3, 0x5cc

    invoke-direct {v1, p0, v2, v3}, Lcom/eltechs/axs/Keyboard$XKey;-><init>(Lcom/eltechs/axs/Keyboard;Lcom/eltechs/axs/KeyCodesX;I)V

    const/16 v2, 0x62c

    aput-object v1, v0, v2

    .line 793
    iget-object v0, p0, Lcom/eltechs/axs/Keyboard;->UnicodeToXKeyMap:[Lcom/eltechs/axs/Keyboard$XKey;

    new-instance v1, Lcom/eltechs/axs/Keyboard$XKey;

    sget-object v2, Lcom/eltechs/axs/KeyCodesX;->KEY_V:Lcom/eltechs/axs/KeyCodesX;

    const/16 v3, 0x5cd

    invoke-direct {v1, p0, v2, v3}, Lcom/eltechs/axs/Keyboard$XKey;-><init>(Lcom/eltechs/axs/Keyboard;Lcom/eltechs/axs/KeyCodesX;I)V

    const/16 v2, 0x62d

    aput-object v1, v0, v2

    .line 794
    iget-object v0, p0, Lcom/eltechs/axs/Keyboard;->UnicodeToXKeyMap:[Lcom/eltechs/axs/Keyboard$XKey;

    new-instance v1, Lcom/eltechs/axs/Keyboard$XKey;

    sget-object v2, Lcom/eltechs/axs/KeyCodesX;->KEY_W:Lcom/eltechs/axs/KeyCodesX;

    const/16 v3, 0x5ce

    invoke-direct {v1, p0, v2, v3}, Lcom/eltechs/axs/Keyboard$XKey;-><init>(Lcom/eltechs/axs/Keyboard;Lcom/eltechs/axs/KeyCodesX;I)V

    const/16 v2, 0x62e

    aput-object v1, v0, v2

    .line 795
    iget-object v0, p0, Lcom/eltechs/axs/Keyboard;->UnicodeToXKeyMap:[Lcom/eltechs/axs/Keyboard$XKey;

    new-instance v1, Lcom/eltechs/axs/Keyboard$XKey;

    sget-object v2, Lcom/eltechs/axs/KeyCodesX;->KEY_X:Lcom/eltechs/axs/KeyCodesX;

    const/16 v3, 0x5cf

    invoke-direct {v1, p0, v2, v3}, Lcom/eltechs/axs/Keyboard$XKey;-><init>(Lcom/eltechs/axs/Keyboard;Lcom/eltechs/axs/KeyCodesX;I)V

    const/16 v2, 0x62f

    aput-object v1, v0, v2

    .line 796
    iget-object v0, p0, Lcom/eltechs/axs/Keyboard;->UnicodeToXKeyMap:[Lcom/eltechs/axs/Keyboard$XKey;

    new-instance v1, Lcom/eltechs/axs/Keyboard$XKey;

    sget-object v2, Lcom/eltechs/axs/KeyCodesX;->KEY_Y:Lcom/eltechs/axs/KeyCodesX;

    const/16 v3, 0x5d0

    invoke-direct {v1, p0, v2, v3}, Lcom/eltechs/axs/Keyboard$XKey;-><init>(Lcom/eltechs/axs/Keyboard;Lcom/eltechs/axs/KeyCodesX;I)V

    const/16 v2, 0x630

    aput-object v1, v0, v2

    .line 797
    iget-object v0, p0, Lcom/eltechs/axs/Keyboard;->UnicodeToXKeyMap:[Lcom/eltechs/axs/Keyboard$XKey;

    new-instance v1, Lcom/eltechs/axs/Keyboard$XKey;

    sget-object v2, Lcom/eltechs/axs/KeyCodesX;->KEY_Z:Lcom/eltechs/axs/KeyCodesX;

    const/16 v3, 0x5d1

    invoke-direct {v1, p0, v2, v3}, Lcom/eltechs/axs/Keyboard$XKey;-><init>(Lcom/eltechs/axs/Keyboard;Lcom/eltechs/axs/KeyCodesX;I)V

    const/16 v2, 0x631

    aput-object v1, v0, v2

    .line 798
    iget-object v0, p0, Lcom/eltechs/axs/Keyboard;->UnicodeToXKeyMap:[Lcom/eltechs/axs/Keyboard$XKey;

    new-instance v1, Lcom/eltechs/axs/Keyboard$XKey;

    sget-object v2, Lcom/eltechs/axs/KeyCodesX;->KEY_A:Lcom/eltechs/axs/KeyCodesX;

    const/16 v3, 0x5d2

    invoke-direct {v1, p0, v2, v3}, Lcom/eltechs/axs/Keyboard$XKey;-><init>(Lcom/eltechs/axs/Keyboard;Lcom/eltechs/axs/KeyCodesX;I)V

    const/16 v2, 0x632

    aput-object v1, v0, v2

    .line 799
    iget-object v0, p0, Lcom/eltechs/axs/Keyboard;->UnicodeToXKeyMap:[Lcom/eltechs/axs/Keyboard$XKey;

    new-instance v1, Lcom/eltechs/axs/Keyboard$XKey;

    sget-object v2, Lcom/eltechs/axs/KeyCodesX;->KEY_B:Lcom/eltechs/axs/KeyCodesX;

    const/16 v3, 0x5d3

    invoke-direct {v1, p0, v2, v3}, Lcom/eltechs/axs/Keyboard$XKey;-><init>(Lcom/eltechs/axs/Keyboard;Lcom/eltechs/axs/KeyCodesX;I)V

    const/16 v2, 0x633

    aput-object v1, v0, v2

    .line 800
    iget-object v0, p0, Lcom/eltechs/axs/Keyboard;->UnicodeToXKeyMap:[Lcom/eltechs/axs/Keyboard$XKey;

    new-instance v1, Lcom/eltechs/axs/Keyboard$XKey;

    sget-object v2, Lcom/eltechs/axs/KeyCodesX;->KEY_C:Lcom/eltechs/axs/KeyCodesX;

    const/16 v3, 0x5d4

    invoke-direct {v1, p0, v2, v3}, Lcom/eltechs/axs/Keyboard$XKey;-><init>(Lcom/eltechs/axs/Keyboard;Lcom/eltechs/axs/KeyCodesX;I)V

    const/16 v2, 0x634

    aput-object v1, v0, v2

    .line 801
    iget-object v0, p0, Lcom/eltechs/axs/Keyboard;->UnicodeToXKeyMap:[Lcom/eltechs/axs/Keyboard$XKey;

    new-instance v1, Lcom/eltechs/axs/Keyboard$XKey;

    sget-object v2, Lcom/eltechs/axs/KeyCodesX;->KEY_D:Lcom/eltechs/axs/KeyCodesX;

    const/16 v3, 0x5d5

    invoke-direct {v1, p0, v2, v3}, Lcom/eltechs/axs/Keyboard$XKey;-><init>(Lcom/eltechs/axs/Keyboard;Lcom/eltechs/axs/KeyCodesX;I)V

    const/16 v2, 0x635

    aput-object v1, v0, v2

    .line 802
    iget-object v0, p0, Lcom/eltechs/axs/Keyboard;->UnicodeToXKeyMap:[Lcom/eltechs/axs/Keyboard$XKey;

    new-instance v1, Lcom/eltechs/axs/Keyboard$XKey;

    sget-object v2, Lcom/eltechs/axs/KeyCodesX;->KEY_E:Lcom/eltechs/axs/KeyCodesX;

    const/16 v3, 0x5d6

    invoke-direct {v1, p0, v2, v3}, Lcom/eltechs/axs/Keyboard$XKey;-><init>(Lcom/eltechs/axs/Keyboard;Lcom/eltechs/axs/KeyCodesX;I)V

    const/16 v2, 0x636

    aput-object v1, v0, v2

    .line 803
    iget-object v0, p0, Lcom/eltechs/axs/Keyboard;->UnicodeToXKeyMap:[Lcom/eltechs/axs/Keyboard$XKey;

    new-instance v1, Lcom/eltechs/axs/Keyboard$XKey;

    sget-object v2, Lcom/eltechs/axs/KeyCodesX;->KEY_F:Lcom/eltechs/axs/KeyCodesX;

    const/16 v3, 0x5d7

    invoke-direct {v1, p0, v2, v3}, Lcom/eltechs/axs/Keyboard$XKey;-><init>(Lcom/eltechs/axs/Keyboard;Lcom/eltechs/axs/KeyCodesX;I)V

    const/16 v2, 0x637

    aput-object v1, v0, v2

    .line 804
    iget-object v0, p0, Lcom/eltechs/axs/Keyboard;->UnicodeToXKeyMap:[Lcom/eltechs/axs/Keyboard$XKey;

    new-instance v1, Lcom/eltechs/axs/Keyboard$XKey;

    sget-object v2, Lcom/eltechs/axs/KeyCodesX;->KEY_G:Lcom/eltechs/axs/KeyCodesX;

    const/16 v3, 0x5d8

    invoke-direct {v1, p0, v2, v3}, Lcom/eltechs/axs/Keyboard$XKey;-><init>(Lcom/eltechs/axs/Keyboard;Lcom/eltechs/axs/KeyCodesX;I)V

    const/16 v2, 0x638

    aput-object v1, v0, v2

    .line 805
    iget-object v0, p0, Lcom/eltechs/axs/Keyboard;->UnicodeToXKeyMap:[Lcom/eltechs/axs/Keyboard$XKey;

    new-instance v1, Lcom/eltechs/axs/Keyboard$XKey;

    sget-object v2, Lcom/eltechs/axs/KeyCodesX;->KEY_H:Lcom/eltechs/axs/KeyCodesX;

    const/16 v3, 0x5d9

    invoke-direct {v1, p0, v2, v3}, Lcom/eltechs/axs/Keyboard$XKey;-><init>(Lcom/eltechs/axs/Keyboard;Lcom/eltechs/axs/KeyCodesX;I)V

    const/16 v2, 0x639

    aput-object v1, v0, v2

    .line 806
    iget-object v0, p0, Lcom/eltechs/axs/Keyboard;->UnicodeToXKeyMap:[Lcom/eltechs/axs/Keyboard$XKey;

    new-instance v1, Lcom/eltechs/axs/Keyboard$XKey;

    sget-object v2, Lcom/eltechs/axs/KeyCodesX;->KEY_I:Lcom/eltechs/axs/KeyCodesX;

    const/16 v3, 0x5da

    invoke-direct {v1, p0, v2, v3}, Lcom/eltechs/axs/Keyboard$XKey;-><init>(Lcom/eltechs/axs/Keyboard;Lcom/eltechs/axs/KeyCodesX;I)V

    const/16 v2, 0x63a

    aput-object v1, v0, v2

    .line 807
    iget-object v0, p0, Lcom/eltechs/axs/Keyboard;->UnicodeToXKeyMap:[Lcom/eltechs/axs/Keyboard$XKey;

    new-instance v1, Lcom/eltechs/axs/Keyboard$XKey;

    sget-object v2, Lcom/eltechs/axs/KeyCodesX;->KEY_J:Lcom/eltechs/axs/KeyCodesX;

    const/16 v3, 0x5e0

    invoke-direct {v1, p0, v2, v3}, Lcom/eltechs/axs/Keyboard$XKey;-><init>(Lcom/eltechs/axs/Keyboard;Lcom/eltechs/axs/KeyCodesX;I)V

    const/16 v2, 0x640

    aput-object v1, v0, v2

    .line 808
    iget-object v0, p0, Lcom/eltechs/axs/Keyboard;->UnicodeToXKeyMap:[Lcom/eltechs/axs/Keyboard$XKey;

    new-instance v1, Lcom/eltechs/axs/Keyboard$XKey;

    sget-object v2, Lcom/eltechs/axs/KeyCodesX;->KEY_K:Lcom/eltechs/axs/KeyCodesX;

    const/16 v3, 0x5e1

    invoke-direct {v1, p0, v2, v3}, Lcom/eltechs/axs/Keyboard$XKey;-><init>(Lcom/eltechs/axs/Keyboard;Lcom/eltechs/axs/KeyCodesX;I)V

    const/16 v2, 0x641

    aput-object v1, v0, v2

    .line 809
    iget-object v0, p0, Lcom/eltechs/axs/Keyboard;->UnicodeToXKeyMap:[Lcom/eltechs/axs/Keyboard$XKey;

    new-instance v1, Lcom/eltechs/axs/Keyboard$XKey;

    sget-object v2, Lcom/eltechs/axs/KeyCodesX;->KEY_L:Lcom/eltechs/axs/KeyCodesX;

    const/16 v3, 0x5e2

    invoke-direct {v1, p0, v2, v3}, Lcom/eltechs/axs/Keyboard$XKey;-><init>(Lcom/eltechs/axs/Keyboard;Lcom/eltechs/axs/KeyCodesX;I)V

    const/16 v2, 0x642

    aput-object v1, v0, v2

    .line 810
    iget-object v0, p0, Lcom/eltechs/axs/Keyboard;->UnicodeToXKeyMap:[Lcom/eltechs/axs/Keyboard$XKey;

    new-instance v1, Lcom/eltechs/axs/Keyboard$XKey;

    sget-object v2, Lcom/eltechs/axs/KeyCodesX;->KEY_M:Lcom/eltechs/axs/KeyCodesX;

    const/16 v3, 0x5e3

    invoke-direct {v1, p0, v2, v3}, Lcom/eltechs/axs/Keyboard$XKey;-><init>(Lcom/eltechs/axs/Keyboard;Lcom/eltechs/axs/KeyCodesX;I)V

    const/16 v2, 0x643

    aput-object v1, v0, v2

    .line 811
    iget-object v0, p0, Lcom/eltechs/axs/Keyboard;->UnicodeToXKeyMap:[Lcom/eltechs/axs/Keyboard$XKey;

    new-instance v1, Lcom/eltechs/axs/Keyboard$XKey;

    sget-object v2, Lcom/eltechs/axs/KeyCodesX;->KEY_N:Lcom/eltechs/axs/KeyCodesX;

    const/16 v3, 0x5e4

    invoke-direct {v1, p0, v2, v3}, Lcom/eltechs/axs/Keyboard$XKey;-><init>(Lcom/eltechs/axs/Keyboard;Lcom/eltechs/axs/KeyCodesX;I)V

    const/16 v2, 0x644

    aput-object v1, v0, v2

    .line 812
    iget-object v0, p0, Lcom/eltechs/axs/Keyboard;->UnicodeToXKeyMap:[Lcom/eltechs/axs/Keyboard$XKey;

    new-instance v1, Lcom/eltechs/axs/Keyboard$XKey;

    sget-object v2, Lcom/eltechs/axs/KeyCodesX;->KEY_O:Lcom/eltechs/axs/KeyCodesX;

    const/16 v3, 0x5e5

    invoke-direct {v1, p0, v2, v3}, Lcom/eltechs/axs/Keyboard$XKey;-><init>(Lcom/eltechs/axs/Keyboard;Lcom/eltechs/axs/KeyCodesX;I)V

    const/16 v2, 0x645

    aput-object v1, v0, v2

    .line 813
    iget-object v0, p0, Lcom/eltechs/axs/Keyboard;->UnicodeToXKeyMap:[Lcom/eltechs/axs/Keyboard$XKey;

    new-instance v1, Lcom/eltechs/axs/Keyboard$XKey;

    sget-object v2, Lcom/eltechs/axs/KeyCodesX;->KEY_P:Lcom/eltechs/axs/KeyCodesX;

    const/16 v3, 0x5e6

    invoke-direct {v1, p0, v2, v3}, Lcom/eltechs/axs/Keyboard$XKey;-><init>(Lcom/eltechs/axs/Keyboard;Lcom/eltechs/axs/KeyCodesX;I)V

    const/16 v2, 0x646

    aput-object v1, v0, v2

    .line 814
    iget-object v0, p0, Lcom/eltechs/axs/Keyboard;->UnicodeToXKeyMap:[Lcom/eltechs/axs/Keyboard$XKey;

    new-instance v1, Lcom/eltechs/axs/Keyboard$XKey;

    sget-object v2, Lcom/eltechs/axs/KeyCodesX;->KEY_Q:Lcom/eltechs/axs/KeyCodesX;

    const/16 v3, 0x5e7

    invoke-direct {v1, p0, v2, v3}, Lcom/eltechs/axs/Keyboard$XKey;-><init>(Lcom/eltechs/axs/Keyboard;Lcom/eltechs/axs/KeyCodesX;I)V

    const/16 v2, 0x647

    aput-object v1, v0, v2

    .line 815
    iget-object v0, p0, Lcom/eltechs/axs/Keyboard;->UnicodeToXKeyMap:[Lcom/eltechs/axs/Keyboard$XKey;

    new-instance v1, Lcom/eltechs/axs/Keyboard$XKey;

    sget-object v2, Lcom/eltechs/axs/KeyCodesX;->KEY_R:Lcom/eltechs/axs/KeyCodesX;

    const/16 v3, 0x5e8

    invoke-direct {v1, p0, v2, v3}, Lcom/eltechs/axs/Keyboard$XKey;-><init>(Lcom/eltechs/axs/Keyboard;Lcom/eltechs/axs/KeyCodesX;I)V

    const/16 v2, 0x648

    aput-object v1, v0, v2

    .line 816
    iget-object v0, p0, Lcom/eltechs/axs/Keyboard;->UnicodeToXKeyMap:[Lcom/eltechs/axs/Keyboard$XKey;

    new-instance v1, Lcom/eltechs/axs/Keyboard$XKey;

    sget-object v2, Lcom/eltechs/axs/KeyCodesX;->KEY_S:Lcom/eltechs/axs/KeyCodesX;

    const/16 v3, 0x5e9

    invoke-direct {v1, p0, v2, v3}, Lcom/eltechs/axs/Keyboard$XKey;-><init>(Lcom/eltechs/axs/Keyboard;Lcom/eltechs/axs/KeyCodesX;I)V

    const/16 v2, 0x649

    aput-object v1, v0, v2

    .line 817
    iget-object v0, p0, Lcom/eltechs/axs/Keyboard;->UnicodeToXKeyMap:[Lcom/eltechs/axs/Keyboard$XKey;

    new-instance v1, Lcom/eltechs/axs/Keyboard$XKey;

    sget-object v2, Lcom/eltechs/axs/KeyCodesX;->KEY_T:Lcom/eltechs/axs/KeyCodesX;

    const/16 v3, 0x5ea

    invoke-direct {v1, p0, v2, v3}, Lcom/eltechs/axs/Keyboard$XKey;-><init>(Lcom/eltechs/axs/Keyboard;Lcom/eltechs/axs/KeyCodesX;I)V

    const/16 v2, 0x64a

    aput-object v1, v0, v2

    .line 818
    iget-object v0, p0, Lcom/eltechs/axs/Keyboard;->UnicodeToXKeyMap:[Lcom/eltechs/axs/Keyboard$XKey;

    new-instance v1, Lcom/eltechs/axs/Keyboard$XKey;

    sget-object v2, Lcom/eltechs/axs/KeyCodesX;->KEY_U:Lcom/eltechs/axs/KeyCodesX;

    const/16 v3, 0x5eb

    invoke-direct {v1, p0, v2, v3}, Lcom/eltechs/axs/Keyboard$XKey;-><init>(Lcom/eltechs/axs/Keyboard;Lcom/eltechs/axs/KeyCodesX;I)V

    const/16 v2, 0x64b

    aput-object v1, v0, v2

    .line 819
    iget-object v0, p0, Lcom/eltechs/axs/Keyboard;->UnicodeToXKeyMap:[Lcom/eltechs/axs/Keyboard$XKey;

    new-instance v1, Lcom/eltechs/axs/Keyboard$XKey;

    sget-object v2, Lcom/eltechs/axs/KeyCodesX;->KEY_V:Lcom/eltechs/axs/KeyCodesX;

    const/16 v3, 0x5ec

    invoke-direct {v1, p0, v2, v3}, Lcom/eltechs/axs/Keyboard$XKey;-><init>(Lcom/eltechs/axs/Keyboard;Lcom/eltechs/axs/KeyCodesX;I)V

    const/16 v2, 0x64c

    aput-object v1, v0, v2

    .line 820
    iget-object v0, p0, Lcom/eltechs/axs/Keyboard;->UnicodeToXKeyMap:[Lcom/eltechs/axs/Keyboard$XKey;

    new-instance v1, Lcom/eltechs/axs/Keyboard$XKey;

    sget-object v2, Lcom/eltechs/axs/KeyCodesX;->KEY_W:Lcom/eltechs/axs/KeyCodesX;

    const/16 v3, 0x5ed

    invoke-direct {v1, p0, v2, v3}, Lcom/eltechs/axs/Keyboard$XKey;-><init>(Lcom/eltechs/axs/Keyboard;Lcom/eltechs/axs/KeyCodesX;I)V

    const/16 v2, 0x64d

    aput-object v1, v0, v2

    .line 821
    iget-object v0, p0, Lcom/eltechs/axs/Keyboard;->UnicodeToXKeyMap:[Lcom/eltechs/axs/Keyboard$XKey;

    new-instance v1, Lcom/eltechs/axs/Keyboard$XKey;

    sget-object v2, Lcom/eltechs/axs/KeyCodesX;->KEY_X:Lcom/eltechs/axs/KeyCodesX;

    const/16 v3, 0x5ee

    invoke-direct {v1, p0, v2, v3}, Lcom/eltechs/axs/Keyboard$XKey;-><init>(Lcom/eltechs/axs/Keyboard;Lcom/eltechs/axs/KeyCodesX;I)V

    const/16 v2, 0x64e

    aput-object v1, v0, v2

    .line 822
    iget-object v0, p0, Lcom/eltechs/axs/Keyboard;->UnicodeToXKeyMap:[Lcom/eltechs/axs/Keyboard$XKey;

    new-instance v1, Lcom/eltechs/axs/Keyboard$XKey;

    sget-object v2, Lcom/eltechs/axs/KeyCodesX;->KEY_Y:Lcom/eltechs/axs/KeyCodesX;

    const/16 v3, 0x5ef

    invoke-direct {v1, p0, v2, v3}, Lcom/eltechs/axs/Keyboard$XKey;-><init>(Lcom/eltechs/axs/Keyboard;Lcom/eltechs/axs/KeyCodesX;I)V

    const/16 v2, 0x64f

    aput-object v1, v0, v2

    .line 823
    iget-object v0, p0, Lcom/eltechs/axs/Keyboard;->UnicodeToXKeyMap:[Lcom/eltechs/axs/Keyboard$XKey;

    new-instance v1, Lcom/eltechs/axs/Keyboard$XKey;

    sget-object v2, Lcom/eltechs/axs/KeyCodesX;->KEY_Z:Lcom/eltechs/axs/KeyCodesX;

    const/16 v3, 0x5f0

    invoke-direct {v1, p0, v2, v3}, Lcom/eltechs/axs/Keyboard$XKey;-><init>(Lcom/eltechs/axs/Keyboard;Lcom/eltechs/axs/KeyCodesX;I)V

    const/16 v2, 0x650

    aput-object v1, v0, v2

    .line 824
    iget-object v0, p0, Lcom/eltechs/axs/Keyboard;->UnicodeToXKeyMap:[Lcom/eltechs/axs/Keyboard$XKey;

    new-instance v1, Lcom/eltechs/axs/Keyboard$XKey;

    sget-object v2, Lcom/eltechs/axs/KeyCodesX;->KEY_A:Lcom/eltechs/axs/KeyCodesX;

    const/16 v3, 0x5f1

    invoke-direct {v1, p0, v2, v3}, Lcom/eltechs/axs/Keyboard$XKey;-><init>(Lcom/eltechs/axs/Keyboard;Lcom/eltechs/axs/KeyCodesX;I)V

    const/16 v2, 0x651

    aput-object v1, v0, v2

    .line 825
    iget-object v0, p0, Lcom/eltechs/axs/Keyboard;->UnicodeToXKeyMap:[Lcom/eltechs/axs/Keyboard$XKey;

    new-instance v1, Lcom/eltechs/axs/Keyboard$XKey;

    sget-object v2, Lcom/eltechs/axs/KeyCodesX;->KEY_B:Lcom/eltechs/axs/KeyCodesX;

    const/16 v3, 0x5f2

    invoke-direct {v1, p0, v2, v3}, Lcom/eltechs/axs/Keyboard$XKey;-><init>(Lcom/eltechs/axs/Keyboard;Lcom/eltechs/axs/KeyCodesX;I)V

    const/16 v2, 0x652

    aput-object v1, v0, v2

    .line 826
    iget-object v0, p0, Lcom/eltechs/axs/Keyboard;->UnicodeToXKeyMap:[Lcom/eltechs/axs/Keyboard$XKey;

    new-instance v1, Lcom/eltechs/axs/Keyboard$XKey;

    sget-object v2, Lcom/eltechs/axs/KeyCodesX;->KEY_C:Lcom/eltechs/axs/KeyCodesX;

    const/16 v3, 0xda1

    invoke-direct {v1, p0, v2, v3}, Lcom/eltechs/axs/Keyboard$XKey;-><init>(Lcom/eltechs/axs/Keyboard;Lcom/eltechs/axs/KeyCodesX;I)V

    const/16 v2, 0xe01

    aput-object v1, v0, v2

    .line 827
    iget-object v0, p0, Lcom/eltechs/axs/Keyboard;->UnicodeToXKeyMap:[Lcom/eltechs/axs/Keyboard$XKey;

    new-instance v1, Lcom/eltechs/axs/Keyboard$XKey;

    sget-object v2, Lcom/eltechs/axs/KeyCodesX;->KEY_D:Lcom/eltechs/axs/KeyCodesX;

    const/16 v3, 0xda2

    invoke-direct {v1, p0, v2, v3}, Lcom/eltechs/axs/Keyboard$XKey;-><init>(Lcom/eltechs/axs/Keyboard;Lcom/eltechs/axs/KeyCodesX;I)V

    const/16 v2, 0xe02

    aput-object v1, v0, v2

    .line 828
    iget-object v0, p0, Lcom/eltechs/axs/Keyboard;->UnicodeToXKeyMap:[Lcom/eltechs/axs/Keyboard$XKey;

    new-instance v1, Lcom/eltechs/axs/Keyboard$XKey;

    sget-object v2, Lcom/eltechs/axs/KeyCodesX;->KEY_E:Lcom/eltechs/axs/KeyCodesX;

    const/16 v3, 0xda3

    invoke-direct {v1, p0, v2, v3}, Lcom/eltechs/axs/Keyboard$XKey;-><init>(Lcom/eltechs/axs/Keyboard;Lcom/eltechs/axs/KeyCodesX;I)V

    const/16 v2, 0xe03

    aput-object v1, v0, v2

    .line 829
    iget-object v0, p0, Lcom/eltechs/axs/Keyboard;->UnicodeToXKeyMap:[Lcom/eltechs/axs/Keyboard$XKey;

    new-instance v1, Lcom/eltechs/axs/Keyboard$XKey;

    sget-object v2, Lcom/eltechs/axs/KeyCodesX;->KEY_F:Lcom/eltechs/axs/KeyCodesX;

    const/16 v3, 0xda4

    invoke-direct {v1, p0, v2, v3}, Lcom/eltechs/axs/Keyboard$XKey;-><init>(Lcom/eltechs/axs/Keyboard;Lcom/eltechs/axs/KeyCodesX;I)V

    const/16 v2, 0xe04

    aput-object v1, v0, v2

    .line 830
    iget-object v0, p0, Lcom/eltechs/axs/Keyboard;->UnicodeToXKeyMap:[Lcom/eltechs/axs/Keyboard$XKey;

    new-instance v1, Lcom/eltechs/axs/Keyboard$XKey;

    sget-object v2, Lcom/eltechs/axs/KeyCodesX;->KEY_G:Lcom/eltechs/axs/KeyCodesX;

    const/16 v3, 0xda5

    invoke-direct {v1, p0, v2, v3}, Lcom/eltechs/axs/Keyboard$XKey;-><init>(Lcom/eltechs/axs/Keyboard;Lcom/eltechs/axs/KeyCodesX;I)V

    const/16 v2, 0xe05

    aput-object v1, v0, v2

    .line 831
    iget-object v0, p0, Lcom/eltechs/axs/Keyboard;->UnicodeToXKeyMap:[Lcom/eltechs/axs/Keyboard$XKey;

    new-instance v1, Lcom/eltechs/axs/Keyboard$XKey;

    sget-object v2, Lcom/eltechs/axs/KeyCodesX;->KEY_H:Lcom/eltechs/axs/KeyCodesX;

    const/16 v3, 0xda6

    invoke-direct {v1, p0, v2, v3}, Lcom/eltechs/axs/Keyboard$XKey;-><init>(Lcom/eltechs/axs/Keyboard;Lcom/eltechs/axs/KeyCodesX;I)V

    const/16 v2, 0xe06

    aput-object v1, v0, v2

    .line 832
    iget-object v0, p0, Lcom/eltechs/axs/Keyboard;->UnicodeToXKeyMap:[Lcom/eltechs/axs/Keyboard$XKey;

    new-instance v1, Lcom/eltechs/axs/Keyboard$XKey;

    sget-object v2, Lcom/eltechs/axs/KeyCodesX;->KEY_I:Lcom/eltechs/axs/KeyCodesX;

    const/16 v3, 0xda7

    invoke-direct {v1, p0, v2, v3}, Lcom/eltechs/axs/Keyboard$XKey;-><init>(Lcom/eltechs/axs/Keyboard;Lcom/eltechs/axs/KeyCodesX;I)V

    const/16 v2, 0xe07

    aput-object v1, v0, v2

    .line 833
    iget-object v0, p0, Lcom/eltechs/axs/Keyboard;->UnicodeToXKeyMap:[Lcom/eltechs/axs/Keyboard$XKey;

    new-instance v1, Lcom/eltechs/axs/Keyboard$XKey;

    sget-object v2, Lcom/eltechs/axs/KeyCodesX;->KEY_J:Lcom/eltechs/axs/KeyCodesX;

    const/16 v3, 0xda8

    invoke-direct {v1, p0, v2, v3}, Lcom/eltechs/axs/Keyboard$XKey;-><init>(Lcom/eltechs/axs/Keyboard;Lcom/eltechs/axs/KeyCodesX;I)V

    const/16 v2, 0xe08

    aput-object v1, v0, v2

    .line 834
    iget-object v0, p0, Lcom/eltechs/axs/Keyboard;->UnicodeToXKeyMap:[Lcom/eltechs/axs/Keyboard$XKey;

    new-instance v1, Lcom/eltechs/axs/Keyboard$XKey;

    sget-object v2, Lcom/eltechs/axs/KeyCodesX;->KEY_K:Lcom/eltechs/axs/KeyCodesX;

    const/16 v3, 0xda9

    invoke-direct {v1, p0, v2, v3}, Lcom/eltechs/axs/Keyboard$XKey;-><init>(Lcom/eltechs/axs/Keyboard;Lcom/eltechs/axs/KeyCodesX;I)V

    const/16 v2, 0xe09

    aput-object v1, v0, v2

    .line 835
    iget-object v0, p0, Lcom/eltechs/axs/Keyboard;->UnicodeToXKeyMap:[Lcom/eltechs/axs/Keyboard$XKey;

    new-instance v1, Lcom/eltechs/axs/Keyboard$XKey;

    sget-object v2, Lcom/eltechs/axs/KeyCodesX;->KEY_L:Lcom/eltechs/axs/KeyCodesX;

    const/16 v3, 0xdaa

    invoke-direct {v1, p0, v2, v3}, Lcom/eltechs/axs/Keyboard$XKey;-><init>(Lcom/eltechs/axs/Keyboard;Lcom/eltechs/axs/KeyCodesX;I)V

    const/16 v2, 0xe0a

    aput-object v1, v0, v2

    .line 836
    iget-object v0, p0, Lcom/eltechs/axs/Keyboard;->UnicodeToXKeyMap:[Lcom/eltechs/axs/Keyboard$XKey;

    new-instance v1, Lcom/eltechs/axs/Keyboard$XKey;

    sget-object v2, Lcom/eltechs/axs/KeyCodesX;->KEY_M:Lcom/eltechs/axs/KeyCodesX;

    const/16 v3, 0xdab

    invoke-direct {v1, p0, v2, v3}, Lcom/eltechs/axs/Keyboard$XKey;-><init>(Lcom/eltechs/axs/Keyboard;Lcom/eltechs/axs/KeyCodesX;I)V

    const/16 v2, 0xe0b

    aput-object v1, v0, v2

    .line 837
    iget-object v0, p0, Lcom/eltechs/axs/Keyboard;->UnicodeToXKeyMap:[Lcom/eltechs/axs/Keyboard$XKey;

    new-instance v1, Lcom/eltechs/axs/Keyboard$XKey;

    sget-object v2, Lcom/eltechs/axs/KeyCodesX;->KEY_N:Lcom/eltechs/axs/KeyCodesX;

    const/16 v3, 0xdac

    invoke-direct {v1, p0, v2, v3}, Lcom/eltechs/axs/Keyboard$XKey;-><init>(Lcom/eltechs/axs/Keyboard;Lcom/eltechs/axs/KeyCodesX;I)V

    const/16 v2, 0xe0c

    aput-object v1, v0, v2

    .line 838
    iget-object v0, p0, Lcom/eltechs/axs/Keyboard;->UnicodeToXKeyMap:[Lcom/eltechs/axs/Keyboard$XKey;

    new-instance v1, Lcom/eltechs/axs/Keyboard$XKey;

    sget-object v2, Lcom/eltechs/axs/KeyCodesX;->KEY_O:Lcom/eltechs/axs/KeyCodesX;

    const/16 v3, 0xdad

    invoke-direct {v1, p0, v2, v3}, Lcom/eltechs/axs/Keyboard$XKey;-><init>(Lcom/eltechs/axs/Keyboard;Lcom/eltechs/axs/KeyCodesX;I)V

    const/16 v2, 0xe0d

    aput-object v1, v0, v2

    .line 839
    iget-object v0, p0, Lcom/eltechs/axs/Keyboard;->UnicodeToXKeyMap:[Lcom/eltechs/axs/Keyboard$XKey;

    new-instance v1, Lcom/eltechs/axs/Keyboard$XKey;

    sget-object v2, Lcom/eltechs/axs/KeyCodesX;->KEY_P:Lcom/eltechs/axs/KeyCodesX;

    const/16 v3, 0xdae

    invoke-direct {v1, p0, v2, v3}, Lcom/eltechs/axs/Keyboard$XKey;-><init>(Lcom/eltechs/axs/Keyboard;Lcom/eltechs/axs/KeyCodesX;I)V

    const/16 v2, 0xe0e

    aput-object v1, v0, v2

    .line 840
    iget-object v0, p0, Lcom/eltechs/axs/Keyboard;->UnicodeToXKeyMap:[Lcom/eltechs/axs/Keyboard$XKey;

    new-instance v1, Lcom/eltechs/axs/Keyboard$XKey;

    sget-object v2, Lcom/eltechs/axs/KeyCodesX;->KEY_Q:Lcom/eltechs/axs/KeyCodesX;

    const/16 v3, 0xdaf

    invoke-direct {v1, p0, v2, v3}, Lcom/eltechs/axs/Keyboard$XKey;-><init>(Lcom/eltechs/axs/Keyboard;Lcom/eltechs/axs/KeyCodesX;I)V

    const/16 v2, 0xe0f

    aput-object v1, v0, v2

    .line 841
    iget-object v0, p0, Lcom/eltechs/axs/Keyboard;->UnicodeToXKeyMap:[Lcom/eltechs/axs/Keyboard$XKey;

    new-instance v1, Lcom/eltechs/axs/Keyboard$XKey;

    sget-object v2, Lcom/eltechs/axs/KeyCodesX;->KEY_R:Lcom/eltechs/axs/KeyCodesX;

    const/16 v3, 0xdb0

    invoke-direct {v1, p0, v2, v3}, Lcom/eltechs/axs/Keyboard$XKey;-><init>(Lcom/eltechs/axs/Keyboard;Lcom/eltechs/axs/KeyCodesX;I)V

    const/16 v2, 0xe10

    aput-object v1, v0, v2

    .line 842
    iget-object v0, p0, Lcom/eltechs/axs/Keyboard;->UnicodeToXKeyMap:[Lcom/eltechs/axs/Keyboard$XKey;

    new-instance v1, Lcom/eltechs/axs/Keyboard$XKey;

    sget-object v2, Lcom/eltechs/axs/KeyCodesX;->KEY_S:Lcom/eltechs/axs/KeyCodesX;

    const/16 v3, 0xdb1

    invoke-direct {v1, p0, v2, v3}, Lcom/eltechs/axs/Keyboard$XKey;-><init>(Lcom/eltechs/axs/Keyboard;Lcom/eltechs/axs/KeyCodesX;I)V

    const/16 v2, 0xe11

    aput-object v1, v0, v2

    .line 843
    iget-object v0, p0, Lcom/eltechs/axs/Keyboard;->UnicodeToXKeyMap:[Lcom/eltechs/axs/Keyboard$XKey;

    new-instance v1, Lcom/eltechs/axs/Keyboard$XKey;

    sget-object v2, Lcom/eltechs/axs/KeyCodesX;->KEY_T:Lcom/eltechs/axs/KeyCodesX;

    const/16 v3, 0xdb2

    invoke-direct {v1, p0, v2, v3}, Lcom/eltechs/axs/Keyboard$XKey;-><init>(Lcom/eltechs/axs/Keyboard;Lcom/eltechs/axs/KeyCodesX;I)V

    const/16 v2, 0xe12

    aput-object v1, v0, v2

    .line 844
    iget-object v0, p0, Lcom/eltechs/axs/Keyboard;->UnicodeToXKeyMap:[Lcom/eltechs/axs/Keyboard$XKey;

    new-instance v1, Lcom/eltechs/axs/Keyboard$XKey;

    sget-object v2, Lcom/eltechs/axs/KeyCodesX;->KEY_U:Lcom/eltechs/axs/KeyCodesX;

    const/16 v3, 0xdb3

    invoke-direct {v1, p0, v2, v3}, Lcom/eltechs/axs/Keyboard$XKey;-><init>(Lcom/eltechs/axs/Keyboard;Lcom/eltechs/axs/KeyCodesX;I)V

    const/16 v2, 0xe13

    aput-object v1, v0, v2

    .line 845
    iget-object v0, p0, Lcom/eltechs/axs/Keyboard;->UnicodeToXKeyMap:[Lcom/eltechs/axs/Keyboard$XKey;

    new-instance v1, Lcom/eltechs/axs/Keyboard$XKey;

    sget-object v2, Lcom/eltechs/axs/KeyCodesX;->KEY_V:Lcom/eltechs/axs/KeyCodesX;

    const/16 v3, 0xdb4

    invoke-direct {v1, p0, v2, v3}, Lcom/eltechs/axs/Keyboard$XKey;-><init>(Lcom/eltechs/axs/Keyboard;Lcom/eltechs/axs/KeyCodesX;I)V

    const/16 v2, 0xe14

    aput-object v1, v0, v2

    .line 846
    iget-object v0, p0, Lcom/eltechs/axs/Keyboard;->UnicodeToXKeyMap:[Lcom/eltechs/axs/Keyboard$XKey;

    new-instance v1, Lcom/eltechs/axs/Keyboard$XKey;

    sget-object v2, Lcom/eltechs/axs/KeyCodesX;->KEY_W:Lcom/eltechs/axs/KeyCodesX;

    const/16 v3, 0xdb5

    invoke-direct {v1, p0, v2, v3}, Lcom/eltechs/axs/Keyboard$XKey;-><init>(Lcom/eltechs/axs/Keyboard;Lcom/eltechs/axs/KeyCodesX;I)V

    const/16 v2, 0xe15

    aput-object v1, v0, v2

    .line 847
    iget-object v0, p0, Lcom/eltechs/axs/Keyboard;->UnicodeToXKeyMap:[Lcom/eltechs/axs/Keyboard$XKey;

    new-instance v1, Lcom/eltechs/axs/Keyboard$XKey;

    sget-object v2, Lcom/eltechs/axs/KeyCodesX;->KEY_X:Lcom/eltechs/axs/KeyCodesX;

    const/16 v3, 0xdb6

    invoke-direct {v1, p0, v2, v3}, Lcom/eltechs/axs/Keyboard$XKey;-><init>(Lcom/eltechs/axs/Keyboard;Lcom/eltechs/axs/KeyCodesX;I)V

    const/16 v2, 0xe16

    aput-object v1, v0, v2

    .line 848
    iget-object v0, p0, Lcom/eltechs/axs/Keyboard;->UnicodeToXKeyMap:[Lcom/eltechs/axs/Keyboard$XKey;

    new-instance v1, Lcom/eltechs/axs/Keyboard$XKey;

    sget-object v2, Lcom/eltechs/axs/KeyCodesX;->KEY_Y:Lcom/eltechs/axs/KeyCodesX;

    const/16 v3, 0xdb7

    invoke-direct {v1, p0, v2, v3}, Lcom/eltechs/axs/Keyboard$XKey;-><init>(Lcom/eltechs/axs/Keyboard;Lcom/eltechs/axs/KeyCodesX;I)V

    const/16 v2, 0xe17

    aput-object v1, v0, v2

    .line 849
    iget-object v0, p0, Lcom/eltechs/axs/Keyboard;->UnicodeToXKeyMap:[Lcom/eltechs/axs/Keyboard$XKey;

    new-instance v1, Lcom/eltechs/axs/Keyboard$XKey;

    sget-object v2, Lcom/eltechs/axs/KeyCodesX;->KEY_Z:Lcom/eltechs/axs/KeyCodesX;

    const/16 v3, 0xdb8

    invoke-direct {v1, p0, v2, v3}, Lcom/eltechs/axs/Keyboard$XKey;-><init>(Lcom/eltechs/axs/Keyboard;Lcom/eltechs/axs/KeyCodesX;I)V

    const/16 v2, 0xe18

    aput-object v1, v0, v2

    .line 850
    iget-object v0, p0, Lcom/eltechs/axs/Keyboard;->UnicodeToXKeyMap:[Lcom/eltechs/axs/Keyboard$XKey;

    new-instance v1, Lcom/eltechs/axs/Keyboard$XKey;

    sget-object v2, Lcom/eltechs/axs/KeyCodesX;->KEY_A:Lcom/eltechs/axs/KeyCodesX;

    const/16 v3, 0xdb9

    invoke-direct {v1, p0, v2, v3}, Lcom/eltechs/axs/Keyboard$XKey;-><init>(Lcom/eltechs/axs/Keyboard;Lcom/eltechs/axs/KeyCodesX;I)V

    const/16 v2, 0xe19

    aput-object v1, v0, v2

    .line 851
    iget-object v0, p0, Lcom/eltechs/axs/Keyboard;->UnicodeToXKeyMap:[Lcom/eltechs/axs/Keyboard$XKey;

    new-instance v1, Lcom/eltechs/axs/Keyboard$XKey;

    sget-object v2, Lcom/eltechs/axs/KeyCodesX;->KEY_B:Lcom/eltechs/axs/KeyCodesX;

    const/16 v3, 0xdba

    invoke-direct {v1, p0, v2, v3}, Lcom/eltechs/axs/Keyboard$XKey;-><init>(Lcom/eltechs/axs/Keyboard;Lcom/eltechs/axs/KeyCodesX;I)V

    const/16 v2, 0xe1a

    aput-object v1, v0, v2

    .line 852
    iget-object v0, p0, Lcom/eltechs/axs/Keyboard;->UnicodeToXKeyMap:[Lcom/eltechs/axs/Keyboard$XKey;

    new-instance v1, Lcom/eltechs/axs/Keyboard$XKey;

    sget-object v2, Lcom/eltechs/axs/KeyCodesX;->KEY_C:Lcom/eltechs/axs/KeyCodesX;

    const/16 v3, 0xdbb

    invoke-direct {v1, p0, v2, v3}, Lcom/eltechs/axs/Keyboard$XKey;-><init>(Lcom/eltechs/axs/Keyboard;Lcom/eltechs/axs/KeyCodesX;I)V

    const/16 v2, 0xe1b

    aput-object v1, v0, v2

    .line 853
    iget-object v0, p0, Lcom/eltechs/axs/Keyboard;->UnicodeToXKeyMap:[Lcom/eltechs/axs/Keyboard$XKey;

    new-instance v1, Lcom/eltechs/axs/Keyboard$XKey;

    sget-object v2, Lcom/eltechs/axs/KeyCodesX;->KEY_D:Lcom/eltechs/axs/KeyCodesX;

    const/16 v3, 0xdbc

    invoke-direct {v1, p0, v2, v3}, Lcom/eltechs/axs/Keyboard$XKey;-><init>(Lcom/eltechs/axs/Keyboard;Lcom/eltechs/axs/KeyCodesX;I)V

    const/16 v2, 0xe1c

    aput-object v1, v0, v2

    .line 854
    iget-object v0, p0, Lcom/eltechs/axs/Keyboard;->UnicodeToXKeyMap:[Lcom/eltechs/axs/Keyboard$XKey;

    new-instance v1, Lcom/eltechs/axs/Keyboard$XKey;

    sget-object v2, Lcom/eltechs/axs/KeyCodesX;->KEY_E:Lcom/eltechs/axs/KeyCodesX;

    const/16 v3, 0xdbd

    invoke-direct {v1, p0, v2, v3}, Lcom/eltechs/axs/Keyboard$XKey;-><init>(Lcom/eltechs/axs/Keyboard;Lcom/eltechs/axs/KeyCodesX;I)V

    const/16 v2, 0xe1d

    aput-object v1, v0, v2

    .line 855
    iget-object v0, p0, Lcom/eltechs/axs/Keyboard;->UnicodeToXKeyMap:[Lcom/eltechs/axs/Keyboard$XKey;

    new-instance v1, Lcom/eltechs/axs/Keyboard$XKey;

    sget-object v2, Lcom/eltechs/axs/KeyCodesX;->KEY_F:Lcom/eltechs/axs/KeyCodesX;

    const/16 v3, 0xdbe

    invoke-direct {v1, p0, v2, v3}, Lcom/eltechs/axs/Keyboard$XKey;-><init>(Lcom/eltechs/axs/Keyboard;Lcom/eltechs/axs/KeyCodesX;I)V

    const/16 v2, 0xe1e

    aput-object v1, v0, v2

    .line 856
    iget-object v0, p0, Lcom/eltechs/axs/Keyboard;->UnicodeToXKeyMap:[Lcom/eltechs/axs/Keyboard$XKey;

    new-instance v1, Lcom/eltechs/axs/Keyboard$XKey;

    sget-object v2, Lcom/eltechs/axs/KeyCodesX;->KEY_G:Lcom/eltechs/axs/KeyCodesX;

    const/16 v3, 0xdbf

    invoke-direct {v1, p0, v2, v3}, Lcom/eltechs/axs/Keyboard$XKey;-><init>(Lcom/eltechs/axs/Keyboard;Lcom/eltechs/axs/KeyCodesX;I)V

    const/16 v2, 0xe1f

    aput-object v1, v0, v2

    .line 857
    iget-object v0, p0, Lcom/eltechs/axs/Keyboard;->UnicodeToXKeyMap:[Lcom/eltechs/axs/Keyboard$XKey;

    new-instance v1, Lcom/eltechs/axs/Keyboard$XKey;

    sget-object v2, Lcom/eltechs/axs/KeyCodesX;->KEY_H:Lcom/eltechs/axs/KeyCodesX;

    const/16 v3, 0xdc0

    invoke-direct {v1, p0, v2, v3}, Lcom/eltechs/axs/Keyboard$XKey;-><init>(Lcom/eltechs/axs/Keyboard;Lcom/eltechs/axs/KeyCodesX;I)V

    const/16 v2, 0xe20

    aput-object v1, v0, v2

    .line 858
    iget-object v0, p0, Lcom/eltechs/axs/Keyboard;->UnicodeToXKeyMap:[Lcom/eltechs/axs/Keyboard$XKey;

    new-instance v1, Lcom/eltechs/axs/Keyboard$XKey;

    sget-object v2, Lcom/eltechs/axs/KeyCodesX;->KEY_I:Lcom/eltechs/axs/KeyCodesX;

    const/16 v3, 0xdc1

    invoke-direct {v1, p0, v2, v3}, Lcom/eltechs/axs/Keyboard$XKey;-><init>(Lcom/eltechs/axs/Keyboard;Lcom/eltechs/axs/KeyCodesX;I)V

    const/16 v2, 0xe21

    aput-object v1, v0, v2

    .line 859
    iget-object v0, p0, Lcom/eltechs/axs/Keyboard;->UnicodeToXKeyMap:[Lcom/eltechs/axs/Keyboard$XKey;

    new-instance v1, Lcom/eltechs/axs/Keyboard$XKey;

    sget-object v2, Lcom/eltechs/axs/KeyCodesX;->KEY_J:Lcom/eltechs/axs/KeyCodesX;

    const/16 v3, 0xdc2

    invoke-direct {v1, p0, v2, v3}, Lcom/eltechs/axs/Keyboard$XKey;-><init>(Lcom/eltechs/axs/Keyboard;Lcom/eltechs/axs/KeyCodesX;I)V

    const/16 v2, 0xe22

    aput-object v1, v0, v2

    .line 860
    iget-object v0, p0, Lcom/eltechs/axs/Keyboard;->UnicodeToXKeyMap:[Lcom/eltechs/axs/Keyboard$XKey;

    new-instance v1, Lcom/eltechs/axs/Keyboard$XKey;

    sget-object v2, Lcom/eltechs/axs/KeyCodesX;->KEY_K:Lcom/eltechs/axs/KeyCodesX;

    const/16 v3, 0xdc3

    invoke-direct {v1, p0, v2, v3}, Lcom/eltechs/axs/Keyboard$XKey;-><init>(Lcom/eltechs/axs/Keyboard;Lcom/eltechs/axs/KeyCodesX;I)V

    const/16 v2, 0xe23

    aput-object v1, v0, v2

    .line 861
    iget-object v0, p0, Lcom/eltechs/axs/Keyboard;->UnicodeToXKeyMap:[Lcom/eltechs/axs/Keyboard$XKey;

    new-instance v1, Lcom/eltechs/axs/Keyboard$XKey;

    sget-object v2, Lcom/eltechs/axs/KeyCodesX;->KEY_L:Lcom/eltechs/axs/KeyCodesX;

    const/16 v3, 0xdc4

    invoke-direct {v1, p0, v2, v3}, Lcom/eltechs/axs/Keyboard$XKey;-><init>(Lcom/eltechs/axs/Keyboard;Lcom/eltechs/axs/KeyCodesX;I)V

    const/16 v2, 0xe24

    aput-object v1, v0, v2

    .line 862
    iget-object v0, p0, Lcom/eltechs/axs/Keyboard;->UnicodeToXKeyMap:[Lcom/eltechs/axs/Keyboard$XKey;

    new-instance v1, Lcom/eltechs/axs/Keyboard$XKey;

    sget-object v2, Lcom/eltechs/axs/KeyCodesX;->KEY_M:Lcom/eltechs/axs/KeyCodesX;

    const/16 v3, 0xdc5

    invoke-direct {v1, p0, v2, v3}, Lcom/eltechs/axs/Keyboard$XKey;-><init>(Lcom/eltechs/axs/Keyboard;Lcom/eltechs/axs/KeyCodesX;I)V

    const/16 v2, 0xe25

    aput-object v1, v0, v2

    .line 863
    iget-object v0, p0, Lcom/eltechs/axs/Keyboard;->UnicodeToXKeyMap:[Lcom/eltechs/axs/Keyboard$XKey;

    new-instance v1, Lcom/eltechs/axs/Keyboard$XKey;

    sget-object v2, Lcom/eltechs/axs/KeyCodesX;->KEY_N:Lcom/eltechs/axs/KeyCodesX;

    const/16 v3, 0xdc6

    invoke-direct {v1, p0, v2, v3}, Lcom/eltechs/axs/Keyboard$XKey;-><init>(Lcom/eltechs/axs/Keyboard;Lcom/eltechs/axs/KeyCodesX;I)V

    const/16 v2, 0xe26

    aput-object v1, v0, v2

    .line 864
    iget-object v0, p0, Lcom/eltechs/axs/Keyboard;->UnicodeToXKeyMap:[Lcom/eltechs/axs/Keyboard$XKey;

    new-instance v1, Lcom/eltechs/axs/Keyboard$XKey;

    sget-object v2, Lcom/eltechs/axs/KeyCodesX;->KEY_O:Lcom/eltechs/axs/KeyCodesX;

    const/16 v3, 0xdc7

    invoke-direct {v1, p0, v2, v3}, Lcom/eltechs/axs/Keyboard$XKey;-><init>(Lcom/eltechs/axs/Keyboard;Lcom/eltechs/axs/KeyCodesX;I)V

    const/16 v2, 0xe27

    aput-object v1, v0, v2

    .line 865
    iget-object v0, p0, Lcom/eltechs/axs/Keyboard;->UnicodeToXKeyMap:[Lcom/eltechs/axs/Keyboard$XKey;

    new-instance v1, Lcom/eltechs/axs/Keyboard$XKey;

    sget-object v2, Lcom/eltechs/axs/KeyCodesX;->KEY_P:Lcom/eltechs/axs/KeyCodesX;

    const/16 v3, 0xdc8

    invoke-direct {v1, p0, v2, v3}, Lcom/eltechs/axs/Keyboard$XKey;-><init>(Lcom/eltechs/axs/Keyboard;Lcom/eltechs/axs/KeyCodesX;I)V

    const/16 v2, 0xe28

    aput-object v1, v0, v2

    .line 866
    iget-object v0, p0, Lcom/eltechs/axs/Keyboard;->UnicodeToXKeyMap:[Lcom/eltechs/axs/Keyboard$XKey;

    new-instance v1, Lcom/eltechs/axs/Keyboard$XKey;

    sget-object v2, Lcom/eltechs/axs/KeyCodesX;->KEY_Q:Lcom/eltechs/axs/KeyCodesX;

    const/16 v3, 0xdc9

    invoke-direct {v1, p0, v2, v3}, Lcom/eltechs/axs/Keyboard$XKey;-><init>(Lcom/eltechs/axs/Keyboard;Lcom/eltechs/axs/KeyCodesX;I)V

    const/16 v2, 0xe29

    aput-object v1, v0, v2

    .line 867
    iget-object v0, p0, Lcom/eltechs/axs/Keyboard;->UnicodeToXKeyMap:[Lcom/eltechs/axs/Keyboard$XKey;

    new-instance v1, Lcom/eltechs/axs/Keyboard$XKey;

    sget-object v2, Lcom/eltechs/axs/KeyCodesX;->KEY_R:Lcom/eltechs/axs/KeyCodesX;

    const/16 v3, 0xdca

    invoke-direct {v1, p0, v2, v3}, Lcom/eltechs/axs/Keyboard$XKey;-><init>(Lcom/eltechs/axs/Keyboard;Lcom/eltechs/axs/KeyCodesX;I)V

    const/16 v2, 0xe2a

    aput-object v1, v0, v2

    .line 868
    iget-object v0, p0, Lcom/eltechs/axs/Keyboard;->UnicodeToXKeyMap:[Lcom/eltechs/axs/Keyboard$XKey;

    new-instance v1, Lcom/eltechs/axs/Keyboard$XKey;

    sget-object v2, Lcom/eltechs/axs/KeyCodesX;->KEY_S:Lcom/eltechs/axs/KeyCodesX;

    const/16 v3, 0xdcb

    invoke-direct {v1, p0, v2, v3}, Lcom/eltechs/axs/Keyboard$XKey;-><init>(Lcom/eltechs/axs/Keyboard;Lcom/eltechs/axs/KeyCodesX;I)V

    const/16 v2, 0xe2b

    aput-object v1, v0, v2

    .line 869
    iget-object v0, p0, Lcom/eltechs/axs/Keyboard;->UnicodeToXKeyMap:[Lcom/eltechs/axs/Keyboard$XKey;

    new-instance v1, Lcom/eltechs/axs/Keyboard$XKey;

    sget-object v2, Lcom/eltechs/axs/KeyCodesX;->KEY_T:Lcom/eltechs/axs/KeyCodesX;

    const/16 v3, 0xdcc

    invoke-direct {v1, p0, v2, v3}, Lcom/eltechs/axs/Keyboard$XKey;-><init>(Lcom/eltechs/axs/Keyboard;Lcom/eltechs/axs/KeyCodesX;I)V

    const/16 v2, 0xe2c

    aput-object v1, v0, v2

    .line 870
    iget-object v0, p0, Lcom/eltechs/axs/Keyboard;->UnicodeToXKeyMap:[Lcom/eltechs/axs/Keyboard$XKey;

    new-instance v1, Lcom/eltechs/axs/Keyboard$XKey;

    sget-object v2, Lcom/eltechs/axs/KeyCodesX;->KEY_U:Lcom/eltechs/axs/KeyCodesX;

    const/16 v3, 0xdcd

    invoke-direct {v1, p0, v2, v3}, Lcom/eltechs/axs/Keyboard$XKey;-><init>(Lcom/eltechs/axs/Keyboard;Lcom/eltechs/axs/KeyCodesX;I)V

    const/16 v2, 0xe2d

    aput-object v1, v0, v2

    .line 871
    iget-object v0, p0, Lcom/eltechs/axs/Keyboard;->UnicodeToXKeyMap:[Lcom/eltechs/axs/Keyboard$XKey;

    new-instance v1, Lcom/eltechs/axs/Keyboard$XKey;

    sget-object v2, Lcom/eltechs/axs/KeyCodesX;->KEY_V:Lcom/eltechs/axs/KeyCodesX;

    const/16 v3, 0xdce

    invoke-direct {v1, p0, v2, v3}, Lcom/eltechs/axs/Keyboard$XKey;-><init>(Lcom/eltechs/axs/Keyboard;Lcom/eltechs/axs/KeyCodesX;I)V

    const/16 v2, 0xe2e

    aput-object v1, v0, v2

    .line 872
    iget-object v0, p0, Lcom/eltechs/axs/Keyboard;->UnicodeToXKeyMap:[Lcom/eltechs/axs/Keyboard$XKey;

    new-instance v1, Lcom/eltechs/axs/Keyboard$XKey;

    sget-object v2, Lcom/eltechs/axs/KeyCodesX;->KEY_W:Lcom/eltechs/axs/KeyCodesX;

    const/16 v3, 0xdcf

    invoke-direct {v1, p0, v2, v3}, Lcom/eltechs/axs/Keyboard$XKey;-><init>(Lcom/eltechs/axs/Keyboard;Lcom/eltechs/axs/KeyCodesX;I)V

    const/16 v2, 0xe2f

    aput-object v1, v0, v2

    .line 873
    iget-object v0, p0, Lcom/eltechs/axs/Keyboard;->UnicodeToXKeyMap:[Lcom/eltechs/axs/Keyboard$XKey;

    new-instance v1, Lcom/eltechs/axs/Keyboard$XKey;

    sget-object v2, Lcom/eltechs/axs/KeyCodesX;->KEY_X:Lcom/eltechs/axs/KeyCodesX;

    const/16 v3, 0xdd0

    invoke-direct {v1, p0, v2, v3}, Lcom/eltechs/axs/Keyboard$XKey;-><init>(Lcom/eltechs/axs/Keyboard;Lcom/eltechs/axs/KeyCodesX;I)V

    const/16 v2, 0xe30

    aput-object v1, v0, v2

    .line 874
    iget-object v0, p0, Lcom/eltechs/axs/Keyboard;->UnicodeToXKeyMap:[Lcom/eltechs/axs/Keyboard$XKey;

    new-instance v1, Lcom/eltechs/axs/Keyboard$XKey;

    sget-object v2, Lcom/eltechs/axs/KeyCodesX;->KEY_Y:Lcom/eltechs/axs/KeyCodesX;

    const/16 v3, 0xdd1

    invoke-direct {v1, p0, v2, v3}, Lcom/eltechs/axs/Keyboard$XKey;-><init>(Lcom/eltechs/axs/Keyboard;Lcom/eltechs/axs/KeyCodesX;I)V

    const/16 v2, 0xe31

    aput-object v1, v0, v2

    .line 875
    iget-object v0, p0, Lcom/eltechs/axs/Keyboard;->UnicodeToXKeyMap:[Lcom/eltechs/axs/Keyboard$XKey;

    new-instance v1, Lcom/eltechs/axs/Keyboard$XKey;

    sget-object v2, Lcom/eltechs/axs/KeyCodesX;->KEY_Z:Lcom/eltechs/axs/KeyCodesX;

    const/16 v3, 0xdd2

    invoke-direct {v1, p0, v2, v3}, Lcom/eltechs/axs/Keyboard$XKey;-><init>(Lcom/eltechs/axs/Keyboard;Lcom/eltechs/axs/KeyCodesX;I)V

    const/16 v2, 0xe32

    aput-object v1, v0, v2

    .line 876
    iget-object v0, p0, Lcom/eltechs/axs/Keyboard;->UnicodeToXKeyMap:[Lcom/eltechs/axs/Keyboard$XKey;

    new-instance v1, Lcom/eltechs/axs/Keyboard$XKey;

    sget-object v2, Lcom/eltechs/axs/KeyCodesX;->KEY_A:Lcom/eltechs/axs/KeyCodesX;

    const/16 v3, 0xdd3

    invoke-direct {v1, p0, v2, v3}, Lcom/eltechs/axs/Keyboard$XKey;-><init>(Lcom/eltechs/axs/Keyboard;Lcom/eltechs/axs/KeyCodesX;I)V

    const/16 v2, 0xe33

    aput-object v1, v0, v2

    .line 877
    iget-object v0, p0, Lcom/eltechs/axs/Keyboard;->UnicodeToXKeyMap:[Lcom/eltechs/axs/Keyboard$XKey;

    new-instance v1, Lcom/eltechs/axs/Keyboard$XKey;

    sget-object v2, Lcom/eltechs/axs/KeyCodesX;->KEY_B:Lcom/eltechs/axs/KeyCodesX;

    const/16 v3, 0xdd4

    invoke-direct {v1, p0, v2, v3}, Lcom/eltechs/axs/Keyboard$XKey;-><init>(Lcom/eltechs/axs/Keyboard;Lcom/eltechs/axs/KeyCodesX;I)V

    const/16 v2, 0xe34

    aput-object v1, v0, v2

    .line 878
    iget-object v0, p0, Lcom/eltechs/axs/Keyboard;->UnicodeToXKeyMap:[Lcom/eltechs/axs/Keyboard$XKey;

    new-instance v1, Lcom/eltechs/axs/Keyboard$XKey;

    sget-object v2, Lcom/eltechs/axs/KeyCodesX;->KEY_C:Lcom/eltechs/axs/KeyCodesX;

    const/16 v3, 0xdd5

    invoke-direct {v1, p0, v2, v3}, Lcom/eltechs/axs/Keyboard$XKey;-><init>(Lcom/eltechs/axs/Keyboard;Lcom/eltechs/axs/KeyCodesX;I)V

    const/16 v2, 0xe35

    aput-object v1, v0, v2

    .line 879
    iget-object v0, p0, Lcom/eltechs/axs/Keyboard;->UnicodeToXKeyMap:[Lcom/eltechs/axs/Keyboard$XKey;

    new-instance v1, Lcom/eltechs/axs/Keyboard$XKey;

    sget-object v2, Lcom/eltechs/axs/KeyCodesX;->KEY_D:Lcom/eltechs/axs/KeyCodesX;

    const/16 v3, 0xdd6

    invoke-direct {v1, p0, v2, v3}, Lcom/eltechs/axs/Keyboard$XKey;-><init>(Lcom/eltechs/axs/Keyboard;Lcom/eltechs/axs/KeyCodesX;I)V

    const/16 v2, 0xe36

    aput-object v1, v0, v2

    .line 880
    iget-object v0, p0, Lcom/eltechs/axs/Keyboard;->UnicodeToXKeyMap:[Lcom/eltechs/axs/Keyboard$XKey;

    new-instance v1, Lcom/eltechs/axs/Keyboard$XKey;

    sget-object v2, Lcom/eltechs/axs/KeyCodesX;->KEY_E:Lcom/eltechs/axs/KeyCodesX;

    const/16 v3, 0xdd7

    invoke-direct {v1, p0, v2, v3}, Lcom/eltechs/axs/Keyboard$XKey;-><init>(Lcom/eltechs/axs/Keyboard;Lcom/eltechs/axs/KeyCodesX;I)V

    const/16 v2, 0xe37

    aput-object v1, v0, v2

    .line 881
    iget-object v0, p0, Lcom/eltechs/axs/Keyboard;->UnicodeToXKeyMap:[Lcom/eltechs/axs/Keyboard$XKey;

    new-instance v1, Lcom/eltechs/axs/Keyboard$XKey;

    sget-object v2, Lcom/eltechs/axs/KeyCodesX;->KEY_F:Lcom/eltechs/axs/KeyCodesX;

    const/16 v3, 0xdd8

    invoke-direct {v1, p0, v2, v3}, Lcom/eltechs/axs/Keyboard$XKey;-><init>(Lcom/eltechs/axs/Keyboard;Lcom/eltechs/axs/KeyCodesX;I)V

    const/16 v2, 0xe38

    aput-object v1, v0, v2

    .line 882
    iget-object v0, p0, Lcom/eltechs/axs/Keyboard;->UnicodeToXKeyMap:[Lcom/eltechs/axs/Keyboard$XKey;

    new-instance v1, Lcom/eltechs/axs/Keyboard$XKey;

    sget-object v2, Lcom/eltechs/axs/KeyCodesX;->KEY_G:Lcom/eltechs/axs/KeyCodesX;

    const/16 v3, 0xdd9

    invoke-direct {v1, p0, v2, v3}, Lcom/eltechs/axs/Keyboard$XKey;-><init>(Lcom/eltechs/axs/Keyboard;Lcom/eltechs/axs/KeyCodesX;I)V

    const/16 v2, 0xe39

    aput-object v1, v0, v2

    .line 883
    iget-object v0, p0, Lcom/eltechs/axs/Keyboard;->UnicodeToXKeyMap:[Lcom/eltechs/axs/Keyboard$XKey;

    new-instance v1, Lcom/eltechs/axs/Keyboard$XKey;

    sget-object v2, Lcom/eltechs/axs/KeyCodesX;->KEY_H:Lcom/eltechs/axs/KeyCodesX;

    const/16 v3, 0xdda

    invoke-direct {v1, p0, v2, v3}, Lcom/eltechs/axs/Keyboard$XKey;-><init>(Lcom/eltechs/axs/Keyboard;Lcom/eltechs/axs/KeyCodesX;I)V

    const/16 v2, 0xe3a

    aput-object v1, v0, v2

    .line 884
    iget-object v0, p0, Lcom/eltechs/axs/Keyboard;->UnicodeToXKeyMap:[Lcom/eltechs/axs/Keyboard$XKey;

    new-instance v1, Lcom/eltechs/axs/Keyboard$XKey;

    sget-object v2, Lcom/eltechs/axs/KeyCodesX;->KEY_I:Lcom/eltechs/axs/KeyCodesX;

    const/16 v3, 0xddf

    invoke-direct {v1, p0, v2, v3}, Lcom/eltechs/axs/Keyboard$XKey;-><init>(Lcom/eltechs/axs/Keyboard;Lcom/eltechs/axs/KeyCodesX;I)V

    const/16 v2, 0xe3f

    aput-object v1, v0, v2

    .line 885
    iget-object v0, p0, Lcom/eltechs/axs/Keyboard;->UnicodeToXKeyMap:[Lcom/eltechs/axs/Keyboard$XKey;

    new-instance v1, Lcom/eltechs/axs/Keyboard$XKey;

    sget-object v2, Lcom/eltechs/axs/KeyCodesX;->KEY_J:Lcom/eltechs/axs/KeyCodesX;

    const/16 v3, 0xde0

    invoke-direct {v1, p0, v2, v3}, Lcom/eltechs/axs/Keyboard$XKey;-><init>(Lcom/eltechs/axs/Keyboard;Lcom/eltechs/axs/KeyCodesX;I)V

    const/16 v2, 0xe40

    aput-object v1, v0, v2

    .line 886
    iget-object v0, p0, Lcom/eltechs/axs/Keyboard;->UnicodeToXKeyMap:[Lcom/eltechs/axs/Keyboard$XKey;

    new-instance v1, Lcom/eltechs/axs/Keyboard$XKey;

    sget-object v2, Lcom/eltechs/axs/KeyCodesX;->KEY_K:Lcom/eltechs/axs/KeyCodesX;

    const/16 v3, 0xde1

    invoke-direct {v1, p0, v2, v3}, Lcom/eltechs/axs/Keyboard$XKey;-><init>(Lcom/eltechs/axs/Keyboard;Lcom/eltechs/axs/KeyCodesX;I)V

    const/16 v2, 0xe41

    aput-object v1, v0, v2

    .line 887
    iget-object v0, p0, Lcom/eltechs/axs/Keyboard;->UnicodeToXKeyMap:[Lcom/eltechs/axs/Keyboard$XKey;

    new-instance v1, Lcom/eltechs/axs/Keyboard$XKey;

    sget-object v2, Lcom/eltechs/axs/KeyCodesX;->KEY_L:Lcom/eltechs/axs/KeyCodesX;

    const/16 v3, 0xde2

    invoke-direct {v1, p0, v2, v3}, Lcom/eltechs/axs/Keyboard$XKey;-><init>(Lcom/eltechs/axs/Keyboard;Lcom/eltechs/axs/KeyCodesX;I)V

    const/16 v2, 0xe42

    aput-object v1, v0, v2

    .line 888
    iget-object v0, p0, Lcom/eltechs/axs/Keyboard;->UnicodeToXKeyMap:[Lcom/eltechs/axs/Keyboard$XKey;

    new-instance v1, Lcom/eltechs/axs/Keyboard$XKey;

    sget-object v2, Lcom/eltechs/axs/KeyCodesX;->KEY_M:Lcom/eltechs/axs/KeyCodesX;

    const/16 v3, 0xde3

    invoke-direct {v1, p0, v2, v3}, Lcom/eltechs/axs/Keyboard$XKey;-><init>(Lcom/eltechs/axs/Keyboard;Lcom/eltechs/axs/KeyCodesX;I)V

    const/16 v2, 0xe43

    aput-object v1, v0, v2

    .line 889
    iget-object v0, p0, Lcom/eltechs/axs/Keyboard;->UnicodeToXKeyMap:[Lcom/eltechs/axs/Keyboard$XKey;

    new-instance v1, Lcom/eltechs/axs/Keyboard$XKey;

    sget-object v2, Lcom/eltechs/axs/KeyCodesX;->KEY_N:Lcom/eltechs/axs/KeyCodesX;

    const/16 v3, 0xde4

    invoke-direct {v1, p0, v2, v3}, Lcom/eltechs/axs/Keyboard$XKey;-><init>(Lcom/eltechs/axs/Keyboard;Lcom/eltechs/axs/KeyCodesX;I)V

    const/16 v2, 0xe44

    aput-object v1, v0, v2

    .line 890
    iget-object v0, p0, Lcom/eltechs/axs/Keyboard;->UnicodeToXKeyMap:[Lcom/eltechs/axs/Keyboard$XKey;

    new-instance v1, Lcom/eltechs/axs/Keyboard$XKey;

    sget-object v2, Lcom/eltechs/axs/KeyCodesX;->KEY_O:Lcom/eltechs/axs/KeyCodesX;

    const/16 v3, 0xde5

    invoke-direct {v1, p0, v2, v3}, Lcom/eltechs/axs/Keyboard$XKey;-><init>(Lcom/eltechs/axs/Keyboard;Lcom/eltechs/axs/KeyCodesX;I)V

    const/16 v2, 0xe45

    aput-object v1, v0, v2

    .line 891
    iget-object v0, p0, Lcom/eltechs/axs/Keyboard;->UnicodeToXKeyMap:[Lcom/eltechs/axs/Keyboard$XKey;

    new-instance v1, Lcom/eltechs/axs/Keyboard$XKey;

    sget-object v2, Lcom/eltechs/axs/KeyCodesX;->KEY_P:Lcom/eltechs/axs/KeyCodesX;

    const/16 v3, 0xde6

    invoke-direct {v1, p0, v2, v3}, Lcom/eltechs/axs/Keyboard$XKey;-><init>(Lcom/eltechs/axs/Keyboard;Lcom/eltechs/axs/KeyCodesX;I)V

    const/16 v2, 0xe46

    aput-object v1, v0, v2

    .line 892
    iget-object v0, p0, Lcom/eltechs/axs/Keyboard;->UnicodeToXKeyMap:[Lcom/eltechs/axs/Keyboard$XKey;

    new-instance v1, Lcom/eltechs/axs/Keyboard$XKey;

    sget-object v2, Lcom/eltechs/axs/KeyCodesX;->KEY_Q:Lcom/eltechs/axs/KeyCodesX;

    const/16 v3, 0xde7

    invoke-direct {v1, p0, v2, v3}, Lcom/eltechs/axs/Keyboard$XKey;-><init>(Lcom/eltechs/axs/Keyboard;Lcom/eltechs/axs/KeyCodesX;I)V

    const/16 v2, 0xe47

    aput-object v1, v0, v2

    .line 893
    iget-object v0, p0, Lcom/eltechs/axs/Keyboard;->UnicodeToXKeyMap:[Lcom/eltechs/axs/Keyboard$XKey;

    new-instance v1, Lcom/eltechs/axs/Keyboard$XKey;

    sget-object v2, Lcom/eltechs/axs/KeyCodesX;->KEY_R:Lcom/eltechs/axs/KeyCodesX;

    const/16 v3, 0xde8

    invoke-direct {v1, p0, v2, v3}, Lcom/eltechs/axs/Keyboard$XKey;-><init>(Lcom/eltechs/axs/Keyboard;Lcom/eltechs/axs/KeyCodesX;I)V

    const/16 v2, 0xe48

    aput-object v1, v0, v2

    .line 894
    iget-object v0, p0, Lcom/eltechs/axs/Keyboard;->UnicodeToXKeyMap:[Lcom/eltechs/axs/Keyboard$XKey;

    new-instance v1, Lcom/eltechs/axs/Keyboard$XKey;

    sget-object v2, Lcom/eltechs/axs/KeyCodesX;->KEY_S:Lcom/eltechs/axs/KeyCodesX;

    const/16 v3, 0xde9

    invoke-direct {v1, p0, v2, v3}, Lcom/eltechs/axs/Keyboard$XKey;-><init>(Lcom/eltechs/axs/Keyboard;Lcom/eltechs/axs/KeyCodesX;I)V

    const/16 v2, 0xe49

    aput-object v1, v0, v2

    .line 895
    iget-object v0, p0, Lcom/eltechs/axs/Keyboard;->UnicodeToXKeyMap:[Lcom/eltechs/axs/Keyboard$XKey;

    new-instance v1, Lcom/eltechs/axs/Keyboard$XKey;

    sget-object v2, Lcom/eltechs/axs/KeyCodesX;->KEY_T:Lcom/eltechs/axs/KeyCodesX;

    const/16 v3, 0xdea

    invoke-direct {v1, p0, v2, v3}, Lcom/eltechs/axs/Keyboard$XKey;-><init>(Lcom/eltechs/axs/Keyboard;Lcom/eltechs/axs/KeyCodesX;I)V

    const/16 v2, 0xe4a

    aput-object v1, v0, v2

    .line 896
    iget-object v0, p0, Lcom/eltechs/axs/Keyboard;->UnicodeToXKeyMap:[Lcom/eltechs/axs/Keyboard$XKey;

    new-instance v1, Lcom/eltechs/axs/Keyboard$XKey;

    sget-object v2, Lcom/eltechs/axs/KeyCodesX;->KEY_U:Lcom/eltechs/axs/KeyCodesX;

    const/16 v3, 0xdeb

    invoke-direct {v1, p0, v2, v3}, Lcom/eltechs/axs/Keyboard$XKey;-><init>(Lcom/eltechs/axs/Keyboard;Lcom/eltechs/axs/KeyCodesX;I)V

    const/16 v2, 0xe4b

    aput-object v1, v0, v2

    .line 897
    iget-object v0, p0, Lcom/eltechs/axs/Keyboard;->UnicodeToXKeyMap:[Lcom/eltechs/axs/Keyboard$XKey;

    new-instance v1, Lcom/eltechs/axs/Keyboard$XKey;

    sget-object v2, Lcom/eltechs/axs/KeyCodesX;->KEY_V:Lcom/eltechs/axs/KeyCodesX;

    const/16 v3, 0xdec

    invoke-direct {v1, p0, v2, v3}, Lcom/eltechs/axs/Keyboard$XKey;-><init>(Lcom/eltechs/axs/Keyboard;Lcom/eltechs/axs/KeyCodesX;I)V

    const/16 v2, 0xe4c

    aput-object v1, v0, v2

    .line 898
    iget-object v0, p0, Lcom/eltechs/axs/Keyboard;->UnicodeToXKeyMap:[Lcom/eltechs/axs/Keyboard$XKey;

    new-instance v1, Lcom/eltechs/axs/Keyboard$XKey;

    sget-object v2, Lcom/eltechs/axs/KeyCodesX;->KEY_W:Lcom/eltechs/axs/KeyCodesX;

    const/16 v3, 0xded

    invoke-direct {v1, p0, v2, v3}, Lcom/eltechs/axs/Keyboard$XKey;-><init>(Lcom/eltechs/axs/Keyboard;Lcom/eltechs/axs/KeyCodesX;I)V

    const/16 v2, 0xe4d

    aput-object v1, v0, v2

    .line 899
    iget-object v0, p0, Lcom/eltechs/axs/Keyboard;->UnicodeToXKeyMap:[Lcom/eltechs/axs/Keyboard$XKey;

    new-instance v1, Lcom/eltechs/axs/Keyboard$XKey;

    sget-object v2, Lcom/eltechs/axs/KeyCodesX;->KEY_X:Lcom/eltechs/axs/KeyCodesX;

    const/16 v3, 0xdf0    # 5.0E-42f

    invoke-direct {v1, p0, v2, v3}, Lcom/eltechs/axs/Keyboard$XKey;-><init>(Lcom/eltechs/axs/Keyboard;Lcom/eltechs/axs/KeyCodesX;I)V

    const/16 v2, 0xe50

    aput-object v1, v0, v2

    .line 900
    iget-object v0, p0, Lcom/eltechs/axs/Keyboard;->UnicodeToXKeyMap:[Lcom/eltechs/axs/Keyboard$XKey;

    new-instance v1, Lcom/eltechs/axs/Keyboard$XKey;

    sget-object v2, Lcom/eltechs/axs/KeyCodesX;->KEY_Y:Lcom/eltechs/axs/KeyCodesX;

    const/16 v3, 0xdf1

    invoke-direct {v1, p0, v2, v3}, Lcom/eltechs/axs/Keyboard$XKey;-><init>(Lcom/eltechs/axs/Keyboard;Lcom/eltechs/axs/KeyCodesX;I)V

    const/16 v2, 0xe51

    aput-object v1, v0, v2

    .line 901
    iget-object v0, p0, Lcom/eltechs/axs/Keyboard;->UnicodeToXKeyMap:[Lcom/eltechs/axs/Keyboard$XKey;

    new-instance v1, Lcom/eltechs/axs/Keyboard$XKey;

    sget-object v2, Lcom/eltechs/axs/KeyCodesX;->KEY_Z:Lcom/eltechs/axs/KeyCodesX;

    const/16 v3, 0xdf2

    invoke-direct {v1, p0, v2, v3}, Lcom/eltechs/axs/Keyboard$XKey;-><init>(Lcom/eltechs/axs/Keyboard;Lcom/eltechs/axs/KeyCodesX;I)V

    const/16 v2, 0xe52

    aput-object v1, v0, v2

    .line 902
    iget-object v0, p0, Lcom/eltechs/axs/Keyboard;->UnicodeToXKeyMap:[Lcom/eltechs/axs/Keyboard$XKey;

    new-instance v1, Lcom/eltechs/axs/Keyboard$XKey;

    sget-object v2, Lcom/eltechs/axs/KeyCodesX;->KEY_A:Lcom/eltechs/axs/KeyCodesX;

    const/16 v3, 0xdf3

    invoke-direct {v1, p0, v2, v3}, Lcom/eltechs/axs/Keyboard$XKey;-><init>(Lcom/eltechs/axs/Keyboard;Lcom/eltechs/axs/KeyCodesX;I)V

    const/16 v2, 0xe53

    aput-object v1, v0, v2

    .line 903
    iget-object v0, p0, Lcom/eltechs/axs/Keyboard;->UnicodeToXKeyMap:[Lcom/eltechs/axs/Keyboard$XKey;

    new-instance v1, Lcom/eltechs/axs/Keyboard$XKey;

    sget-object v2, Lcom/eltechs/axs/KeyCodesX;->KEY_B:Lcom/eltechs/axs/KeyCodesX;

    const/16 v3, 0xdf4

    invoke-direct {v1, p0, v2, v3}, Lcom/eltechs/axs/Keyboard$XKey;-><init>(Lcom/eltechs/axs/Keyboard;Lcom/eltechs/axs/KeyCodesX;I)V

    const/16 v2, 0xe54

    aput-object v1, v0, v2

    .line 904
    iget-object v0, p0, Lcom/eltechs/axs/Keyboard;->UnicodeToXKeyMap:[Lcom/eltechs/axs/Keyboard$XKey;

    new-instance v1, Lcom/eltechs/axs/Keyboard$XKey;

    sget-object v2, Lcom/eltechs/axs/KeyCodesX;->KEY_C:Lcom/eltechs/axs/KeyCodesX;

    const/16 v3, 0xdf5

    invoke-direct {v1, p0, v2, v3}, Lcom/eltechs/axs/Keyboard$XKey;-><init>(Lcom/eltechs/axs/Keyboard;Lcom/eltechs/axs/KeyCodesX;I)V

    const/16 v2, 0xe55

    aput-object v1, v0, v2

    .line 905
    iget-object v0, p0, Lcom/eltechs/axs/Keyboard;->UnicodeToXKeyMap:[Lcom/eltechs/axs/Keyboard$XKey;

    new-instance v1, Lcom/eltechs/axs/Keyboard$XKey;

    sget-object v2, Lcom/eltechs/axs/KeyCodesX;->KEY_D:Lcom/eltechs/axs/KeyCodesX;

    const/16 v3, 0xdf6

    invoke-direct {v1, p0, v2, v3}, Lcom/eltechs/axs/Keyboard$XKey;-><init>(Lcom/eltechs/axs/Keyboard;Lcom/eltechs/axs/KeyCodesX;I)V

    const/16 v2, 0xe56

    aput-object v1, v0, v2

    .line 906
    iget-object v0, p0, Lcom/eltechs/axs/Keyboard;->UnicodeToXKeyMap:[Lcom/eltechs/axs/Keyboard$XKey;

    new-instance v1, Lcom/eltechs/axs/Keyboard$XKey;

    sget-object v2, Lcom/eltechs/axs/KeyCodesX;->KEY_E:Lcom/eltechs/axs/KeyCodesX;

    const/16 v3, 0xdf7

    invoke-direct {v1, p0, v2, v3}, Lcom/eltechs/axs/Keyboard$XKey;-><init>(Lcom/eltechs/axs/Keyboard;Lcom/eltechs/axs/KeyCodesX;I)V

    const/16 v2, 0xe57

    aput-object v1, v0, v2

    .line 907
    iget-object v0, p0, Lcom/eltechs/axs/Keyboard;->UnicodeToXKeyMap:[Lcom/eltechs/axs/Keyboard$XKey;

    new-instance v1, Lcom/eltechs/axs/Keyboard$XKey;

    sget-object v2, Lcom/eltechs/axs/KeyCodesX;->KEY_F:Lcom/eltechs/axs/KeyCodesX;

    const/16 v3, 0xdf8

    invoke-direct {v1, p0, v2, v3}, Lcom/eltechs/axs/Keyboard$XKey;-><init>(Lcom/eltechs/axs/Keyboard;Lcom/eltechs/axs/KeyCodesX;I)V

    const/16 v2, 0xe58

    aput-object v1, v0, v2

    .line 908
    iget-object v0, p0, Lcom/eltechs/axs/Keyboard;->UnicodeToXKeyMap:[Lcom/eltechs/axs/Keyboard$XKey;

    new-instance v1, Lcom/eltechs/axs/Keyboard$XKey;

    sget-object v2, Lcom/eltechs/axs/KeyCodesX;->KEY_G:Lcom/eltechs/axs/KeyCodesX;

    const/16 v3, 0xdf9

    invoke-direct {v1, p0, v2, v3}, Lcom/eltechs/axs/Keyboard$XKey;-><init>(Lcom/eltechs/axs/Keyboard;Lcom/eltechs/axs/KeyCodesX;I)V

    const/16 v2, 0xe59

    aput-object v1, v0, v2

    .line 909
    iget-object v0, p0, Lcom/eltechs/axs/Keyboard;->UnicodeToXKeyMap:[Lcom/eltechs/axs/Keyboard$XKey;

    new-instance v1, Lcom/eltechs/axs/Keyboard$XKey;

    sget-object v2, Lcom/eltechs/axs/KeyCodesX;->KEY_H:Lcom/eltechs/axs/KeyCodesX;

    const/16 v3, 0xaa2

    invoke-direct {v1, p0, v2, v3}, Lcom/eltechs/axs/Keyboard$XKey;-><init>(Lcom/eltechs/axs/Keyboard;Lcom/eltechs/axs/KeyCodesX;I)V

    const/16 v2, 0x2002

    aput-object v1, v0, v2

    .line 910
    iget-object v0, p0, Lcom/eltechs/axs/Keyboard;->UnicodeToXKeyMap:[Lcom/eltechs/axs/Keyboard$XKey;

    new-instance v1, Lcom/eltechs/axs/Keyboard$XKey;

    sget-object v2, Lcom/eltechs/axs/KeyCodesX;->KEY_I:Lcom/eltechs/axs/KeyCodesX;

    const/16 v3, 0xaa1

    invoke-direct {v1, p0, v2, v3}, Lcom/eltechs/axs/Keyboard$XKey;-><init>(Lcom/eltechs/axs/Keyboard;Lcom/eltechs/axs/KeyCodesX;I)V

    const/16 v2, 0x2003

    aput-object v1, v0, v2

    .line 911
    iget-object v0, p0, Lcom/eltechs/axs/Keyboard;->UnicodeToXKeyMap:[Lcom/eltechs/axs/Keyboard$XKey;

    new-instance v1, Lcom/eltechs/axs/Keyboard$XKey;

    sget-object v2, Lcom/eltechs/axs/KeyCodesX;->KEY_J:Lcom/eltechs/axs/KeyCodesX;

    const/16 v3, 0xaa3

    invoke-direct {v1, p0, v2, v3}, Lcom/eltechs/axs/Keyboard$XKey;-><init>(Lcom/eltechs/axs/Keyboard;Lcom/eltechs/axs/KeyCodesX;I)V

    const/16 v2, 0x2004

    aput-object v1, v0, v2

    .line 912
    iget-object v0, p0, Lcom/eltechs/axs/Keyboard;->UnicodeToXKeyMap:[Lcom/eltechs/axs/Keyboard$XKey;

    new-instance v1, Lcom/eltechs/axs/Keyboard$XKey;

    sget-object v2, Lcom/eltechs/axs/KeyCodesX;->KEY_K:Lcom/eltechs/axs/KeyCodesX;

    const/16 v3, 0xaa4

    invoke-direct {v1, p0, v2, v3}, Lcom/eltechs/axs/Keyboard$XKey;-><init>(Lcom/eltechs/axs/Keyboard;Lcom/eltechs/axs/KeyCodesX;I)V

    const/16 v2, 0x2005

    aput-object v1, v0, v2

    .line 913
    iget-object v0, p0, Lcom/eltechs/axs/Keyboard;->UnicodeToXKeyMap:[Lcom/eltechs/axs/Keyboard$XKey;

    new-instance v1, Lcom/eltechs/axs/Keyboard$XKey;

    sget-object v2, Lcom/eltechs/axs/KeyCodesX;->KEY_L:Lcom/eltechs/axs/KeyCodesX;

    const/16 v3, 0xaa5

    invoke-direct {v1, p0, v2, v3}, Lcom/eltechs/axs/Keyboard$XKey;-><init>(Lcom/eltechs/axs/Keyboard;Lcom/eltechs/axs/KeyCodesX;I)V

    const/16 v2, 0x2007

    aput-object v1, v0, v2

    .line 914
    iget-object v0, p0, Lcom/eltechs/axs/Keyboard;->UnicodeToXKeyMap:[Lcom/eltechs/axs/Keyboard$XKey;

    new-instance v1, Lcom/eltechs/axs/Keyboard$XKey;

    sget-object v2, Lcom/eltechs/axs/KeyCodesX;->KEY_M:Lcom/eltechs/axs/KeyCodesX;

    const/16 v3, 0xaa6

    invoke-direct {v1, p0, v2, v3}, Lcom/eltechs/axs/Keyboard$XKey;-><init>(Lcom/eltechs/axs/Keyboard;Lcom/eltechs/axs/KeyCodesX;I)V

    const/16 v2, 0x2008

    aput-object v1, v0, v2

    .line 915
    iget-object v0, p0, Lcom/eltechs/axs/Keyboard;->UnicodeToXKeyMap:[Lcom/eltechs/axs/Keyboard$XKey;

    new-instance v1, Lcom/eltechs/axs/Keyboard$XKey;

    sget-object v2, Lcom/eltechs/axs/KeyCodesX;->KEY_N:Lcom/eltechs/axs/KeyCodesX;

    const/16 v3, 0xaa7

    invoke-direct {v1, p0, v2, v3}, Lcom/eltechs/axs/Keyboard$XKey;-><init>(Lcom/eltechs/axs/Keyboard;Lcom/eltechs/axs/KeyCodesX;I)V

    const/16 v2, 0x2009

    aput-object v1, v0, v2

    .line 916
    iget-object v0, p0, Lcom/eltechs/axs/Keyboard;->UnicodeToXKeyMap:[Lcom/eltechs/axs/Keyboard$XKey;

    new-instance v1, Lcom/eltechs/axs/Keyboard$XKey;

    sget-object v2, Lcom/eltechs/axs/KeyCodesX;->KEY_O:Lcom/eltechs/axs/KeyCodesX;

    const/16 v3, 0xaa8

    invoke-direct {v1, p0, v2, v3}, Lcom/eltechs/axs/Keyboard$XKey;-><init>(Lcom/eltechs/axs/Keyboard;Lcom/eltechs/axs/KeyCodesX;I)V

    const/16 v2, 0x200a

    aput-object v1, v0, v2

    .line 917
    iget-object v0, p0, Lcom/eltechs/axs/Keyboard;->UnicodeToXKeyMap:[Lcom/eltechs/axs/Keyboard$XKey;

    new-instance v1, Lcom/eltechs/axs/Keyboard$XKey;

    sget-object v2, Lcom/eltechs/axs/KeyCodesX;->KEY_P:Lcom/eltechs/axs/KeyCodesX;

    const/16 v3, 0xabb

    invoke-direct {v1, p0, v2, v3}, Lcom/eltechs/axs/Keyboard$XKey;-><init>(Lcom/eltechs/axs/Keyboard;Lcom/eltechs/axs/KeyCodesX;I)V

    const/16 v2, 0x2012

    aput-object v1, v0, v2

    .line 918
    iget-object v0, p0, Lcom/eltechs/axs/Keyboard;->UnicodeToXKeyMap:[Lcom/eltechs/axs/Keyboard$XKey;

    new-instance v1, Lcom/eltechs/axs/Keyboard$XKey;

    sget-object v2, Lcom/eltechs/axs/KeyCodesX;->KEY_Q:Lcom/eltechs/axs/KeyCodesX;

    const/16 v3, 0xaaa

    invoke-direct {v1, p0, v2, v3}, Lcom/eltechs/axs/Keyboard$XKey;-><init>(Lcom/eltechs/axs/Keyboard;Lcom/eltechs/axs/KeyCodesX;I)V

    const/16 v2, 0x2013

    aput-object v1, v0, v2

    .line 919
    iget-object v0, p0, Lcom/eltechs/axs/Keyboard;->UnicodeToXKeyMap:[Lcom/eltechs/axs/Keyboard$XKey;

    new-instance v1, Lcom/eltechs/axs/Keyboard$XKey;

    sget-object v2, Lcom/eltechs/axs/KeyCodesX;->KEY_R:Lcom/eltechs/axs/KeyCodesX;

    const/16 v3, 0xaa9

    invoke-direct {v1, p0, v2, v3}, Lcom/eltechs/axs/Keyboard$XKey;-><init>(Lcom/eltechs/axs/Keyboard;Lcom/eltechs/axs/KeyCodesX;I)V

    const/16 v2, 0x2014

    aput-object v1, v0, v2

    .line 920
    iget-object v0, p0, Lcom/eltechs/axs/Keyboard;->UnicodeToXKeyMap:[Lcom/eltechs/axs/Keyboard$XKey;

    new-instance v1, Lcom/eltechs/axs/Keyboard$XKey;

    sget-object v2, Lcom/eltechs/axs/KeyCodesX;->KEY_S:Lcom/eltechs/axs/KeyCodesX;

    const/16 v3, 0x7af

    invoke-direct {v1, p0, v2, v3}, Lcom/eltechs/axs/Keyboard$XKey;-><init>(Lcom/eltechs/axs/Keyboard;Lcom/eltechs/axs/KeyCodesX;I)V

    const/16 v2, 0x2015

    aput-object v1, v0, v2

    .line 921
    iget-object v0, p0, Lcom/eltechs/axs/Keyboard;->UnicodeToXKeyMap:[Lcom/eltechs/axs/Keyboard$XKey;

    new-instance v1, Lcom/eltechs/axs/Keyboard$XKey;

    sget-object v2, Lcom/eltechs/axs/KeyCodesX;->KEY_T:Lcom/eltechs/axs/KeyCodesX;

    const/16 v3, 0xcdf

    invoke-direct {v1, p0, v2, v3}, Lcom/eltechs/axs/Keyboard$XKey;-><init>(Lcom/eltechs/axs/Keyboard;Lcom/eltechs/axs/KeyCodesX;I)V

    const/16 v2, 0x2017

    aput-object v1, v0, v2

    .line 922
    iget-object v0, p0, Lcom/eltechs/axs/Keyboard;->UnicodeToXKeyMap:[Lcom/eltechs/axs/Keyboard$XKey;

    new-instance v1, Lcom/eltechs/axs/Keyboard$XKey;

    sget-object v2, Lcom/eltechs/axs/KeyCodesX;->KEY_U:Lcom/eltechs/axs/KeyCodesX;

    const/16 v3, 0xad0

    invoke-direct {v1, p0, v2, v3}, Lcom/eltechs/axs/Keyboard$XKey;-><init>(Lcom/eltechs/axs/Keyboard;Lcom/eltechs/axs/KeyCodesX;I)V

    const/16 v2, 0x2018

    aput-object v1, v0, v2

    .line 923
    iget-object v0, p0, Lcom/eltechs/axs/Keyboard;->UnicodeToXKeyMap:[Lcom/eltechs/axs/Keyboard$XKey;

    new-instance v1, Lcom/eltechs/axs/Keyboard$XKey;

    sget-object v2, Lcom/eltechs/axs/KeyCodesX;->KEY_V:Lcom/eltechs/axs/KeyCodesX;

    const/16 v3, 0xad1

    invoke-direct {v1, p0, v2, v3}, Lcom/eltechs/axs/Keyboard$XKey;-><init>(Lcom/eltechs/axs/Keyboard;Lcom/eltechs/axs/KeyCodesX;I)V

    const/16 v2, 0x2019

    aput-object v1, v0, v2

    .line 924
    iget-object v0, p0, Lcom/eltechs/axs/Keyboard;->UnicodeToXKeyMap:[Lcom/eltechs/axs/Keyboard$XKey;

    new-instance v1, Lcom/eltechs/axs/Keyboard$XKey;

    sget-object v2, Lcom/eltechs/axs/KeyCodesX;->KEY_W:Lcom/eltechs/axs/KeyCodesX;

    const/16 v3, 0xafd

    invoke-direct {v1, p0, v2, v3}, Lcom/eltechs/axs/Keyboard$XKey;-><init>(Lcom/eltechs/axs/Keyboard;Lcom/eltechs/axs/KeyCodesX;I)V

    const/16 v2, 0x201a

    aput-object v1, v0, v2

    .line 925
    iget-object v0, p0, Lcom/eltechs/axs/Keyboard;->UnicodeToXKeyMap:[Lcom/eltechs/axs/Keyboard$XKey;

    new-instance v1, Lcom/eltechs/axs/Keyboard$XKey;

    sget-object v2, Lcom/eltechs/axs/KeyCodesX;->KEY_X:Lcom/eltechs/axs/KeyCodesX;

    const/16 v3, 0xad2

    invoke-direct {v1, p0, v2, v3}, Lcom/eltechs/axs/Keyboard$XKey;-><init>(Lcom/eltechs/axs/Keyboard;Lcom/eltechs/axs/KeyCodesX;I)V

    const/16 v2, 0x201c

    aput-object v1, v0, v2

    .line 926
    iget-object v0, p0, Lcom/eltechs/axs/Keyboard;->UnicodeToXKeyMap:[Lcom/eltechs/axs/Keyboard$XKey;

    new-instance v1, Lcom/eltechs/axs/Keyboard$XKey;

    sget-object v2, Lcom/eltechs/axs/KeyCodesX;->KEY_Y:Lcom/eltechs/axs/KeyCodesX;

    const/16 v3, 0xad3

    invoke-direct {v1, p0, v2, v3}, Lcom/eltechs/axs/Keyboard$XKey;-><init>(Lcom/eltechs/axs/Keyboard;Lcom/eltechs/axs/KeyCodesX;I)V

    const/16 v2, 0x201d

    aput-object v1, v0, v2

    .line 927
    iget-object v0, p0, Lcom/eltechs/axs/Keyboard;->UnicodeToXKeyMap:[Lcom/eltechs/axs/Keyboard$XKey;

    new-instance v1, Lcom/eltechs/axs/Keyboard$XKey;

    sget-object v2, Lcom/eltechs/axs/KeyCodesX;->KEY_Z:Lcom/eltechs/axs/KeyCodesX;

    const/16 v3, 0xafe

    invoke-direct {v1, p0, v2, v3}, Lcom/eltechs/axs/Keyboard$XKey;-><init>(Lcom/eltechs/axs/Keyboard;Lcom/eltechs/axs/KeyCodesX;I)V

    const/16 v2, 0x201e

    aput-object v1, v0, v2

    .line 928
    iget-object v0, p0, Lcom/eltechs/axs/Keyboard;->UnicodeToXKeyMap:[Lcom/eltechs/axs/Keyboard$XKey;

    new-instance v1, Lcom/eltechs/axs/Keyboard$XKey;

    sget-object v2, Lcom/eltechs/axs/KeyCodesX;->KEY_A:Lcom/eltechs/axs/KeyCodesX;

    const/16 v3, 0xaf1

    invoke-direct {v1, p0, v2, v3}, Lcom/eltechs/axs/Keyboard$XKey;-><init>(Lcom/eltechs/axs/Keyboard;Lcom/eltechs/axs/KeyCodesX;I)V

    const/16 v2, 0x2020

    aput-object v1, v0, v2

    .line 929
    iget-object v0, p0, Lcom/eltechs/axs/Keyboard;->UnicodeToXKeyMap:[Lcom/eltechs/axs/Keyboard$XKey;

    new-instance v1, Lcom/eltechs/axs/Keyboard$XKey;

    sget-object v2, Lcom/eltechs/axs/KeyCodesX;->KEY_B:Lcom/eltechs/axs/KeyCodesX;

    const/16 v3, 0xaf2

    invoke-direct {v1, p0, v2, v3}, Lcom/eltechs/axs/Keyboard$XKey;-><init>(Lcom/eltechs/axs/Keyboard;Lcom/eltechs/axs/KeyCodesX;I)V

    const/16 v2, 0x2021

    aput-object v1, v0, v2

    .line 930
    iget-object v0, p0, Lcom/eltechs/axs/Keyboard;->UnicodeToXKeyMap:[Lcom/eltechs/axs/Keyboard$XKey;

    new-instance v1, Lcom/eltechs/axs/Keyboard$XKey;

    sget-object v2, Lcom/eltechs/axs/KeyCodesX;->KEY_C:Lcom/eltechs/axs/KeyCodesX;

    const/16 v3, 0xaaf

    invoke-direct {v1, p0, v2, v3}, Lcom/eltechs/axs/Keyboard$XKey;-><init>(Lcom/eltechs/axs/Keyboard;Lcom/eltechs/axs/KeyCodesX;I)V

    const/16 v2, 0x2025

    aput-object v1, v0, v2

    .line 931
    iget-object v0, p0, Lcom/eltechs/axs/Keyboard;->UnicodeToXKeyMap:[Lcom/eltechs/axs/Keyboard$XKey;

    new-instance v1, Lcom/eltechs/axs/Keyboard$XKey;

    sget-object v2, Lcom/eltechs/axs/KeyCodesX;->KEY_D:Lcom/eltechs/axs/KeyCodesX;

    const/16 v3, 0xaae

    invoke-direct {v1, p0, v2, v3}, Lcom/eltechs/axs/Keyboard$XKey;-><init>(Lcom/eltechs/axs/Keyboard;Lcom/eltechs/axs/KeyCodesX;I)V

    const/16 v2, 0x2026

    aput-object v1, v0, v2

    .line 932
    iget-object v0, p0, Lcom/eltechs/axs/Keyboard;->UnicodeToXKeyMap:[Lcom/eltechs/axs/Keyboard$XKey;

    new-instance v1, Lcom/eltechs/axs/Keyboard$XKey;

    sget-object v2, Lcom/eltechs/axs/KeyCodesX;->KEY_E:Lcom/eltechs/axs/KeyCodesX;

    const/16 v3, 0xad6

    invoke-direct {v1, p0, v2, v3}, Lcom/eltechs/axs/Keyboard$XKey;-><init>(Lcom/eltechs/axs/Keyboard;Lcom/eltechs/axs/KeyCodesX;I)V

    const/16 v2, 0x2032

    aput-object v1, v0, v2

    .line 933
    iget-object v0, p0, Lcom/eltechs/axs/Keyboard;->UnicodeToXKeyMap:[Lcom/eltechs/axs/Keyboard$XKey;

    new-instance v1, Lcom/eltechs/axs/Keyboard$XKey;

    sget-object v2, Lcom/eltechs/axs/KeyCodesX;->KEY_F:Lcom/eltechs/axs/KeyCodesX;

    const/16 v3, 0xad7

    invoke-direct {v1, p0, v2, v3}, Lcom/eltechs/axs/Keyboard$XKey;-><init>(Lcom/eltechs/axs/Keyboard;Lcom/eltechs/axs/KeyCodesX;I)V

    const/16 v2, 0x2033

    aput-object v1, v0, v2

    .line 934
    iget-object v0, p0, Lcom/eltechs/axs/Keyboard;->UnicodeToXKeyMap:[Lcom/eltechs/axs/Keyboard$XKey;

    new-instance v1, Lcom/eltechs/axs/Keyboard$XKey;

    sget-object v2, Lcom/eltechs/axs/KeyCodesX;->KEY_G:Lcom/eltechs/axs/KeyCodesX;

    const/16 v3, 0xafc

    invoke-direct {v1, p0, v2, v3}, Lcom/eltechs/axs/Keyboard$XKey;-><init>(Lcom/eltechs/axs/Keyboard;Lcom/eltechs/axs/KeyCodesX;I)V

    const/16 v2, 0x2038

    aput-object v1, v0, v2

    .line 935
    iget-object v0, p0, Lcom/eltechs/axs/Keyboard;->UnicodeToXKeyMap:[Lcom/eltechs/axs/Keyboard$XKey;

    new-instance v1, Lcom/eltechs/axs/Keyboard$XKey;

    sget-object v2, Lcom/eltechs/axs/KeyCodesX;->KEY_H:Lcom/eltechs/axs/KeyCodesX;

    const/16 v3, 0x47e

    invoke-direct {v1, p0, v2, v3}, Lcom/eltechs/axs/Keyboard$XKey;-><init>(Lcom/eltechs/axs/Keyboard;Lcom/eltechs/axs/KeyCodesX;I)V

    const/16 v2, 0x203e

    aput-object v1, v0, v2

    .line 936
    iget-object v0, p0, Lcom/eltechs/axs/Keyboard;->UnicodeToXKeyMap:[Lcom/eltechs/axs/Keyboard$XKey;

    new-instance v1, Lcom/eltechs/axs/Keyboard$XKey;

    sget-object v2, Lcom/eltechs/axs/KeyCodesX;->KEY_I:Lcom/eltechs/axs/KeyCodesX;

    const/16 v3, 0x20ac

    invoke-direct {v1, p0, v2, v3}, Lcom/eltechs/axs/Keyboard$XKey;-><init>(Lcom/eltechs/axs/Keyboard;Lcom/eltechs/axs/KeyCodesX;I)V

    const/16 v2, 0x20ac

    aput-object v1, v0, v2

    .line 937
    iget-object v0, p0, Lcom/eltechs/axs/Keyboard;->UnicodeToXKeyMap:[Lcom/eltechs/axs/Keyboard$XKey;

    new-instance v1, Lcom/eltechs/axs/Keyboard$XKey;

    sget-object v2, Lcom/eltechs/axs/KeyCodesX;->KEY_J:Lcom/eltechs/axs/KeyCodesX;

    const/16 v3, 0xab8

    invoke-direct {v1, p0, v2, v3}, Lcom/eltechs/axs/Keyboard$XKey;-><init>(Lcom/eltechs/axs/Keyboard;Lcom/eltechs/axs/KeyCodesX;I)V

    const/16 v2, 0x2105

    aput-object v1, v0, v2

    .line 938
    iget-object v0, p0, Lcom/eltechs/axs/Keyboard;->UnicodeToXKeyMap:[Lcom/eltechs/axs/Keyboard$XKey;

    new-instance v1, Lcom/eltechs/axs/Keyboard$XKey;

    sget-object v2, Lcom/eltechs/axs/KeyCodesX;->KEY_K:Lcom/eltechs/axs/KeyCodesX;

    const/16 v3, 0x6b0

    invoke-direct {v1, p0, v2, v3}, Lcom/eltechs/axs/Keyboard$XKey;-><init>(Lcom/eltechs/axs/Keyboard;Lcom/eltechs/axs/KeyCodesX;I)V

    const/16 v2, 0x2116

    aput-object v1, v0, v2

    .line 939
    iget-object v0, p0, Lcom/eltechs/axs/Keyboard;->UnicodeToXKeyMap:[Lcom/eltechs/axs/Keyboard$XKey;

    new-instance v1, Lcom/eltechs/axs/Keyboard$XKey;

    sget-object v2, Lcom/eltechs/axs/KeyCodesX;->KEY_L:Lcom/eltechs/axs/KeyCodesX;

    const/16 v3, 0xafb

    invoke-direct {v1, p0, v2, v3}, Lcom/eltechs/axs/Keyboard$XKey;-><init>(Lcom/eltechs/axs/Keyboard;Lcom/eltechs/axs/KeyCodesX;I)V

    const/16 v2, 0x2117

    aput-object v1, v0, v2

    .line 940
    iget-object v0, p0, Lcom/eltechs/axs/Keyboard;->UnicodeToXKeyMap:[Lcom/eltechs/axs/Keyboard$XKey;

    new-instance v1, Lcom/eltechs/axs/Keyboard$XKey;

    sget-object v2, Lcom/eltechs/axs/KeyCodesX;->KEY_M:Lcom/eltechs/axs/KeyCodesX;

    const/16 v3, 0xad4

    invoke-direct {v1, p0, v2, v3}, Lcom/eltechs/axs/Keyboard$XKey;-><init>(Lcom/eltechs/axs/Keyboard;Lcom/eltechs/axs/KeyCodesX;I)V

    const/16 v2, 0x211e

    aput-object v1, v0, v2

    .line 941
    iget-object v0, p0, Lcom/eltechs/axs/Keyboard;->UnicodeToXKeyMap:[Lcom/eltechs/axs/Keyboard$XKey;

    new-instance v1, Lcom/eltechs/axs/Keyboard$XKey;

    sget-object v2, Lcom/eltechs/axs/KeyCodesX;->KEY_N:Lcom/eltechs/axs/KeyCodesX;

    const/16 v3, 0xac9

    invoke-direct {v1, p0, v2, v3}, Lcom/eltechs/axs/Keyboard$XKey;-><init>(Lcom/eltechs/axs/Keyboard;Lcom/eltechs/axs/KeyCodesX;I)V

    const/16 v2, 0x2122

    aput-object v1, v0, v2

    .line 942
    iget-object v0, p0, Lcom/eltechs/axs/Keyboard;->UnicodeToXKeyMap:[Lcom/eltechs/axs/Keyboard$XKey;

    new-instance v1, Lcom/eltechs/axs/Keyboard$XKey;

    sget-object v2, Lcom/eltechs/axs/KeyCodesX;->KEY_O:Lcom/eltechs/axs/KeyCodesX;

    const/16 v3, 0xab0

    invoke-direct {v1, p0, v2, v3}, Lcom/eltechs/axs/Keyboard$XKey;-><init>(Lcom/eltechs/axs/Keyboard;Lcom/eltechs/axs/KeyCodesX;I)V

    const/16 v2, 0x2153

    aput-object v1, v0, v2

    .line 943
    iget-object v0, p0, Lcom/eltechs/axs/Keyboard;->UnicodeToXKeyMap:[Lcom/eltechs/axs/Keyboard$XKey;

    new-instance v1, Lcom/eltechs/axs/Keyboard$XKey;

    sget-object v2, Lcom/eltechs/axs/KeyCodesX;->KEY_P:Lcom/eltechs/axs/KeyCodesX;

    const/16 v3, 0xab1

    invoke-direct {v1, p0, v2, v3}, Lcom/eltechs/axs/Keyboard$XKey;-><init>(Lcom/eltechs/axs/Keyboard;Lcom/eltechs/axs/KeyCodesX;I)V

    const/16 v2, 0x2154

    aput-object v1, v0, v2

    .line 944
    iget-object v0, p0, Lcom/eltechs/axs/Keyboard;->UnicodeToXKeyMap:[Lcom/eltechs/axs/Keyboard$XKey;

    new-instance v1, Lcom/eltechs/axs/Keyboard$XKey;

    sget-object v2, Lcom/eltechs/axs/KeyCodesX;->KEY_Q:Lcom/eltechs/axs/KeyCodesX;

    const/16 v3, 0xab2

    invoke-direct {v1, p0, v2, v3}, Lcom/eltechs/axs/Keyboard$XKey;-><init>(Lcom/eltechs/axs/Keyboard;Lcom/eltechs/axs/KeyCodesX;I)V

    const/16 v2, 0x2155

    aput-object v1, v0, v2

    .line 945
    iget-object v0, p0, Lcom/eltechs/axs/Keyboard;->UnicodeToXKeyMap:[Lcom/eltechs/axs/Keyboard$XKey;

    new-instance v1, Lcom/eltechs/axs/Keyboard$XKey;

    sget-object v2, Lcom/eltechs/axs/KeyCodesX;->KEY_R:Lcom/eltechs/axs/KeyCodesX;

    const/16 v3, 0xab3

    invoke-direct {v1, p0, v2, v3}, Lcom/eltechs/axs/Keyboard$XKey;-><init>(Lcom/eltechs/axs/Keyboard;Lcom/eltechs/axs/KeyCodesX;I)V

    const/16 v2, 0x2156

    aput-object v1, v0, v2

    .line 946
    iget-object v0, p0, Lcom/eltechs/axs/Keyboard;->UnicodeToXKeyMap:[Lcom/eltechs/axs/Keyboard$XKey;

    new-instance v1, Lcom/eltechs/axs/Keyboard$XKey;

    sget-object v2, Lcom/eltechs/axs/KeyCodesX;->KEY_S:Lcom/eltechs/axs/KeyCodesX;

    const/16 v3, 0xab4

    invoke-direct {v1, p0, v2, v3}, Lcom/eltechs/axs/Keyboard$XKey;-><init>(Lcom/eltechs/axs/Keyboard;Lcom/eltechs/axs/KeyCodesX;I)V

    const/16 v2, 0x2157

    aput-object v1, v0, v2

    .line 947
    iget-object v0, p0, Lcom/eltechs/axs/Keyboard;->UnicodeToXKeyMap:[Lcom/eltechs/axs/Keyboard$XKey;

    new-instance v1, Lcom/eltechs/axs/Keyboard$XKey;

    sget-object v2, Lcom/eltechs/axs/KeyCodesX;->KEY_T:Lcom/eltechs/axs/KeyCodesX;

    const/16 v3, 0xab5

    invoke-direct {v1, p0, v2, v3}, Lcom/eltechs/axs/Keyboard$XKey;-><init>(Lcom/eltechs/axs/Keyboard;Lcom/eltechs/axs/KeyCodesX;I)V

    const/16 v2, 0x2158

    aput-object v1, v0, v2

    .line 948
    iget-object v0, p0, Lcom/eltechs/axs/Keyboard;->UnicodeToXKeyMap:[Lcom/eltechs/axs/Keyboard$XKey;

    new-instance v1, Lcom/eltechs/axs/Keyboard$XKey;

    sget-object v2, Lcom/eltechs/axs/KeyCodesX;->KEY_U:Lcom/eltechs/axs/KeyCodesX;

    const/16 v3, 0xab6

    invoke-direct {v1, p0, v2, v3}, Lcom/eltechs/axs/Keyboard$XKey;-><init>(Lcom/eltechs/axs/Keyboard;Lcom/eltechs/axs/KeyCodesX;I)V

    const/16 v2, 0x2159

    aput-object v1, v0, v2

    .line 949
    iget-object v0, p0, Lcom/eltechs/axs/Keyboard;->UnicodeToXKeyMap:[Lcom/eltechs/axs/Keyboard$XKey;

    new-instance v1, Lcom/eltechs/axs/Keyboard$XKey;

    sget-object v2, Lcom/eltechs/axs/KeyCodesX;->KEY_V:Lcom/eltechs/axs/KeyCodesX;

    const/16 v3, 0xab7

    invoke-direct {v1, p0, v2, v3}, Lcom/eltechs/axs/Keyboard$XKey;-><init>(Lcom/eltechs/axs/Keyboard;Lcom/eltechs/axs/KeyCodesX;I)V

    const/16 v2, 0x215a

    aput-object v1, v0, v2

    .line 950
    iget-object v0, p0, Lcom/eltechs/axs/Keyboard;->UnicodeToXKeyMap:[Lcom/eltechs/axs/Keyboard$XKey;

    new-instance v1, Lcom/eltechs/axs/Keyboard$XKey;

    sget-object v2, Lcom/eltechs/axs/KeyCodesX;->KEY_W:Lcom/eltechs/axs/KeyCodesX;

    const/16 v3, 0xac3

    invoke-direct {v1, p0, v2, v3}, Lcom/eltechs/axs/Keyboard$XKey;-><init>(Lcom/eltechs/axs/Keyboard;Lcom/eltechs/axs/KeyCodesX;I)V

    const/16 v2, 0x215b

    aput-object v1, v0, v2

    .line 951
    iget-object v0, p0, Lcom/eltechs/axs/Keyboard;->UnicodeToXKeyMap:[Lcom/eltechs/axs/Keyboard$XKey;

    new-instance v1, Lcom/eltechs/axs/Keyboard$XKey;

    sget-object v2, Lcom/eltechs/axs/KeyCodesX;->KEY_X:Lcom/eltechs/axs/KeyCodesX;

    const/16 v3, 0xac4

    invoke-direct {v1, p0, v2, v3}, Lcom/eltechs/axs/Keyboard$XKey;-><init>(Lcom/eltechs/axs/Keyboard;Lcom/eltechs/axs/KeyCodesX;I)V

    const/16 v2, 0x215c

    aput-object v1, v0, v2

    .line 952
    iget-object v0, p0, Lcom/eltechs/axs/Keyboard;->UnicodeToXKeyMap:[Lcom/eltechs/axs/Keyboard$XKey;

    new-instance v1, Lcom/eltechs/axs/Keyboard$XKey;

    sget-object v2, Lcom/eltechs/axs/KeyCodesX;->KEY_Y:Lcom/eltechs/axs/KeyCodesX;

    const/16 v3, 0xac5

    invoke-direct {v1, p0, v2, v3}, Lcom/eltechs/axs/Keyboard$XKey;-><init>(Lcom/eltechs/axs/Keyboard;Lcom/eltechs/axs/KeyCodesX;I)V

    const/16 v2, 0x215d

    aput-object v1, v0, v2

    .line 953
    iget-object v0, p0, Lcom/eltechs/axs/Keyboard;->UnicodeToXKeyMap:[Lcom/eltechs/axs/Keyboard$XKey;

    new-instance v1, Lcom/eltechs/axs/Keyboard$XKey;

    sget-object v2, Lcom/eltechs/axs/KeyCodesX;->KEY_Z:Lcom/eltechs/axs/KeyCodesX;

    const/16 v3, 0xac6

    invoke-direct {v1, p0, v2, v3}, Lcom/eltechs/axs/Keyboard$XKey;-><init>(Lcom/eltechs/axs/Keyboard;Lcom/eltechs/axs/KeyCodesX;I)V

    const/16 v2, 0x215e

    aput-object v1, v0, v2

    .line 954
    iget-object v0, p0, Lcom/eltechs/axs/Keyboard;->UnicodeToXKeyMap:[Lcom/eltechs/axs/Keyboard$XKey;

    new-instance v1, Lcom/eltechs/axs/Keyboard$XKey;

    sget-object v2, Lcom/eltechs/axs/KeyCodesX;->KEY_A:Lcom/eltechs/axs/KeyCodesX;

    const/16 v3, 0x8fb

    invoke-direct {v1, p0, v2, v3}, Lcom/eltechs/axs/Keyboard$XKey;-><init>(Lcom/eltechs/axs/Keyboard;Lcom/eltechs/axs/KeyCodesX;I)V

    const/16 v2, 0x2190

    aput-object v1, v0, v2

    .line 955
    iget-object v0, p0, Lcom/eltechs/axs/Keyboard;->UnicodeToXKeyMap:[Lcom/eltechs/axs/Keyboard$XKey;

    new-instance v1, Lcom/eltechs/axs/Keyboard$XKey;

    sget-object v2, Lcom/eltechs/axs/KeyCodesX;->KEY_B:Lcom/eltechs/axs/KeyCodesX;

    const/16 v3, 0x8fc

    invoke-direct {v1, p0, v2, v3}, Lcom/eltechs/axs/Keyboard$XKey;-><init>(Lcom/eltechs/axs/Keyboard;Lcom/eltechs/axs/KeyCodesX;I)V

    const/16 v2, 0x2191

    aput-object v1, v0, v2

    .line 956
    iget-object v0, p0, Lcom/eltechs/axs/Keyboard;->UnicodeToXKeyMap:[Lcom/eltechs/axs/Keyboard$XKey;

    new-instance v1, Lcom/eltechs/axs/Keyboard$XKey;

    sget-object v2, Lcom/eltechs/axs/KeyCodesX;->KEY_C:Lcom/eltechs/axs/KeyCodesX;

    const/16 v3, 0x8fd

    invoke-direct {v1, p0, v2, v3}, Lcom/eltechs/axs/Keyboard$XKey;-><init>(Lcom/eltechs/axs/Keyboard;Lcom/eltechs/axs/KeyCodesX;I)V

    const/16 v2, 0x2192

    aput-object v1, v0, v2

    .line 957
    iget-object v0, p0, Lcom/eltechs/axs/Keyboard;->UnicodeToXKeyMap:[Lcom/eltechs/axs/Keyboard$XKey;

    new-instance v1, Lcom/eltechs/axs/Keyboard$XKey;

    sget-object v2, Lcom/eltechs/axs/KeyCodesX;->KEY_D:Lcom/eltechs/axs/KeyCodesX;

    const/16 v3, 0x8fe

    invoke-direct {v1, p0, v2, v3}, Lcom/eltechs/axs/Keyboard$XKey;-><init>(Lcom/eltechs/axs/Keyboard;Lcom/eltechs/axs/KeyCodesX;I)V

    const/16 v2, 0x2193

    aput-object v1, v0, v2

    .line 958
    iget-object v0, p0, Lcom/eltechs/axs/Keyboard;->UnicodeToXKeyMap:[Lcom/eltechs/axs/Keyboard$XKey;

    new-instance v1, Lcom/eltechs/axs/Keyboard$XKey;

    sget-object v2, Lcom/eltechs/axs/KeyCodesX;->KEY_E:Lcom/eltechs/axs/KeyCodesX;

    const/16 v3, 0x8ce

    invoke-direct {v1, p0, v2, v3}, Lcom/eltechs/axs/Keyboard$XKey;-><init>(Lcom/eltechs/axs/Keyboard;Lcom/eltechs/axs/KeyCodesX;I)V

    const/16 v2, 0x21d2

    aput-object v1, v0, v2

    .line 959
    iget-object v0, p0, Lcom/eltechs/axs/Keyboard;->UnicodeToXKeyMap:[Lcom/eltechs/axs/Keyboard$XKey;

    new-instance v1, Lcom/eltechs/axs/Keyboard$XKey;

    sget-object v2, Lcom/eltechs/axs/KeyCodesX;->KEY_F:Lcom/eltechs/axs/KeyCodesX;

    const/16 v3, 0x8cd

    invoke-direct {v1, p0, v2, v3}, Lcom/eltechs/axs/Keyboard$XKey;-><init>(Lcom/eltechs/axs/Keyboard;Lcom/eltechs/axs/KeyCodesX;I)V

    const/16 v2, 0x21d4

    aput-object v1, v0, v2

    .line 960
    iget-object v0, p0, Lcom/eltechs/axs/Keyboard;->UnicodeToXKeyMap:[Lcom/eltechs/axs/Keyboard$XKey;

    new-instance v1, Lcom/eltechs/axs/Keyboard$XKey;

    sget-object v2, Lcom/eltechs/axs/KeyCodesX;->KEY_G:Lcom/eltechs/axs/KeyCodesX;

    const/16 v3, 0x8ef

    invoke-direct {v1, p0, v2, v3}, Lcom/eltechs/axs/Keyboard$XKey;-><init>(Lcom/eltechs/axs/Keyboard;Lcom/eltechs/axs/KeyCodesX;I)V

    const/16 v2, 0x2202

    aput-object v1, v0, v2

    .line 961
    iget-object v0, p0, Lcom/eltechs/axs/Keyboard;->UnicodeToXKeyMap:[Lcom/eltechs/axs/Keyboard$XKey;

    new-instance v1, Lcom/eltechs/axs/Keyboard$XKey;

    sget-object v2, Lcom/eltechs/axs/KeyCodesX;->KEY_H:Lcom/eltechs/axs/KeyCodesX;

    const/16 v3, 0x8c5

    invoke-direct {v1, p0, v2, v3}, Lcom/eltechs/axs/Keyboard$XKey;-><init>(Lcom/eltechs/axs/Keyboard;Lcom/eltechs/axs/KeyCodesX;I)V

    const/16 v2, 0x2207

    aput-object v1, v0, v2

    .line 962
    iget-object v0, p0, Lcom/eltechs/axs/Keyboard;->UnicodeToXKeyMap:[Lcom/eltechs/axs/Keyboard$XKey;

    new-instance v1, Lcom/eltechs/axs/Keyboard$XKey;

    sget-object v2, Lcom/eltechs/axs/KeyCodesX;->KEY_I:Lcom/eltechs/axs/KeyCodesX;

    const/16 v3, 0xbca

    invoke-direct {v1, p0, v2, v3}, Lcom/eltechs/axs/Keyboard$XKey;-><init>(Lcom/eltechs/axs/Keyboard;Lcom/eltechs/axs/KeyCodesX;I)V

    const/16 v2, 0x2218

    aput-object v1, v0, v2

    .line 963
    iget-object v0, p0, Lcom/eltechs/axs/Keyboard;->UnicodeToXKeyMap:[Lcom/eltechs/axs/Keyboard$XKey;

    new-instance v1, Lcom/eltechs/axs/Keyboard$XKey;

    sget-object v2, Lcom/eltechs/axs/KeyCodesX;->KEY_J:Lcom/eltechs/axs/KeyCodesX;

    const/16 v3, 0x8d6

    invoke-direct {v1, p0, v2, v3}, Lcom/eltechs/axs/Keyboard$XKey;-><init>(Lcom/eltechs/axs/Keyboard;Lcom/eltechs/axs/KeyCodesX;I)V

    const/16 v2, 0x221a

    aput-object v1, v0, v2

    .line 964
    iget-object v0, p0, Lcom/eltechs/axs/Keyboard;->UnicodeToXKeyMap:[Lcom/eltechs/axs/Keyboard$XKey;

    new-instance v1, Lcom/eltechs/axs/Keyboard$XKey;

    sget-object v2, Lcom/eltechs/axs/KeyCodesX;->KEY_K:Lcom/eltechs/axs/KeyCodesX;

    const/16 v3, 0x8c1

    invoke-direct {v1, p0, v2, v3}, Lcom/eltechs/axs/Keyboard$XKey;-><init>(Lcom/eltechs/axs/Keyboard;Lcom/eltechs/axs/KeyCodesX;I)V

    const/16 v2, 0x221d

    aput-object v1, v0, v2

    .line 965
    iget-object v0, p0, Lcom/eltechs/axs/Keyboard;->UnicodeToXKeyMap:[Lcom/eltechs/axs/Keyboard$XKey;

    new-instance v1, Lcom/eltechs/axs/Keyboard$XKey;

    sget-object v2, Lcom/eltechs/axs/KeyCodesX;->KEY_L:Lcom/eltechs/axs/KeyCodesX;

    const/16 v3, 0x8c2

    invoke-direct {v1, p0, v2, v3}, Lcom/eltechs/axs/Keyboard$XKey;-><init>(Lcom/eltechs/axs/Keyboard;Lcom/eltechs/axs/KeyCodesX;I)V

    const/16 v2, 0x221e

    aput-object v1, v0, v2

    .line 966
    iget-object v0, p0, Lcom/eltechs/axs/Keyboard;->UnicodeToXKeyMap:[Lcom/eltechs/axs/Keyboard$XKey;

    new-instance v1, Lcom/eltechs/axs/Keyboard$XKey;

    sget-object v2, Lcom/eltechs/axs/KeyCodesX;->KEY_M:Lcom/eltechs/axs/KeyCodesX;

    const/16 v3, 0x8de

    invoke-direct {v1, p0, v2, v3}, Lcom/eltechs/axs/Keyboard$XKey;-><init>(Lcom/eltechs/axs/Keyboard;Lcom/eltechs/axs/KeyCodesX;I)V

    const/16 v2, 0x2227

    aput-object v1, v0, v2

    .line 967
    iget-object v0, p0, Lcom/eltechs/axs/Keyboard;->UnicodeToXKeyMap:[Lcom/eltechs/axs/Keyboard$XKey;

    new-instance v1, Lcom/eltechs/axs/Keyboard$XKey;

    sget-object v2, Lcom/eltechs/axs/KeyCodesX;->KEY_N:Lcom/eltechs/axs/KeyCodesX;

    const/16 v3, 0x8df

    invoke-direct {v1, p0, v2, v3}, Lcom/eltechs/axs/Keyboard$XKey;-><init>(Lcom/eltechs/axs/Keyboard;Lcom/eltechs/axs/KeyCodesX;I)V

    const/16 v2, 0x2228

    aput-object v1, v0, v2

    .line 968
    iget-object v0, p0, Lcom/eltechs/axs/Keyboard;->UnicodeToXKeyMap:[Lcom/eltechs/axs/Keyboard$XKey;

    new-instance v1, Lcom/eltechs/axs/Keyboard$XKey;

    sget-object v2, Lcom/eltechs/axs/KeyCodesX;->KEY_O:Lcom/eltechs/axs/KeyCodesX;

    const/16 v3, 0x8dc

    invoke-direct {v1, p0, v2, v3}, Lcom/eltechs/axs/Keyboard$XKey;-><init>(Lcom/eltechs/axs/Keyboard;Lcom/eltechs/axs/KeyCodesX;I)V

    const/16 v2, 0x2229

    aput-object v1, v0, v2

    .line 969
    iget-object v0, p0, Lcom/eltechs/axs/Keyboard;->UnicodeToXKeyMap:[Lcom/eltechs/axs/Keyboard$XKey;

    new-instance v1, Lcom/eltechs/axs/Keyboard$XKey;

    sget-object v2, Lcom/eltechs/axs/KeyCodesX;->KEY_P:Lcom/eltechs/axs/KeyCodesX;

    const/16 v3, 0x8dd

    invoke-direct {v1, p0, v2, v3}, Lcom/eltechs/axs/Keyboard$XKey;-><init>(Lcom/eltechs/axs/Keyboard;Lcom/eltechs/axs/KeyCodesX;I)V

    const/16 v2, 0x222a

    aput-object v1, v0, v2

    .line 970
    iget-object v0, p0, Lcom/eltechs/axs/Keyboard;->UnicodeToXKeyMap:[Lcom/eltechs/axs/Keyboard$XKey;

    new-instance v1, Lcom/eltechs/axs/Keyboard$XKey;

    sget-object v2, Lcom/eltechs/axs/KeyCodesX;->KEY_Q:Lcom/eltechs/axs/KeyCodesX;

    const/16 v3, 0x8bf

    invoke-direct {v1, p0, v2, v3}, Lcom/eltechs/axs/Keyboard$XKey;-><init>(Lcom/eltechs/axs/Keyboard;Lcom/eltechs/axs/KeyCodesX;I)V

    const/16 v2, 0x222b

    aput-object v1, v0, v2

    .line 971
    iget-object v0, p0, Lcom/eltechs/axs/Keyboard;->UnicodeToXKeyMap:[Lcom/eltechs/axs/Keyboard$XKey;

    new-instance v1, Lcom/eltechs/axs/Keyboard$XKey;

    sget-object v2, Lcom/eltechs/axs/KeyCodesX;->KEY_R:Lcom/eltechs/axs/KeyCodesX;

    const/16 v3, 0x8c0

    invoke-direct {v1, p0, v2, v3}, Lcom/eltechs/axs/Keyboard$XKey;-><init>(Lcom/eltechs/axs/Keyboard;Lcom/eltechs/axs/KeyCodesX;I)V

    const/16 v2, 0x2234

    aput-object v1, v0, v2

    .line 972
    iget-object v0, p0, Lcom/eltechs/axs/Keyboard;->UnicodeToXKeyMap:[Lcom/eltechs/axs/Keyboard$XKey;

    new-instance v1, Lcom/eltechs/axs/Keyboard$XKey;

    sget-object v2, Lcom/eltechs/axs/KeyCodesX;->KEY_S:Lcom/eltechs/axs/KeyCodesX;

    const/16 v3, 0x8c8

    invoke-direct {v1, p0, v2, v3}, Lcom/eltechs/axs/Keyboard$XKey;-><init>(Lcom/eltechs/axs/Keyboard;Lcom/eltechs/axs/KeyCodesX;I)V

    const/16 v2, 0x223c

    aput-object v1, v0, v2

    .line 973
    iget-object v0, p0, Lcom/eltechs/axs/Keyboard;->UnicodeToXKeyMap:[Lcom/eltechs/axs/Keyboard$XKey;

    new-instance v1, Lcom/eltechs/axs/Keyboard$XKey;

    sget-object v2, Lcom/eltechs/axs/KeyCodesX;->KEY_T:Lcom/eltechs/axs/KeyCodesX;

    const/16 v3, 0x8c9

    invoke-direct {v1, p0, v2, v3}, Lcom/eltechs/axs/Keyboard$XKey;-><init>(Lcom/eltechs/axs/Keyboard;Lcom/eltechs/axs/KeyCodesX;I)V

    const/16 v2, 0x2243

    aput-object v1, v0, v2

    .line 974
    iget-object v0, p0, Lcom/eltechs/axs/Keyboard;->UnicodeToXKeyMap:[Lcom/eltechs/axs/Keyboard$XKey;

    new-instance v1, Lcom/eltechs/axs/Keyboard$XKey;

    sget-object v2, Lcom/eltechs/axs/KeyCodesX;->KEY_U:Lcom/eltechs/axs/KeyCodesX;

    const/16 v3, 0x8bd

    invoke-direct {v1, p0, v2, v3}, Lcom/eltechs/axs/Keyboard$XKey;-><init>(Lcom/eltechs/axs/Keyboard;Lcom/eltechs/axs/KeyCodesX;I)V

    const/16 v2, 0x2260

    aput-object v1, v0, v2

    .line 975
    iget-object v0, p0, Lcom/eltechs/axs/Keyboard;->UnicodeToXKeyMap:[Lcom/eltechs/axs/Keyboard$XKey;

    new-instance v1, Lcom/eltechs/axs/Keyboard$XKey;

    sget-object v2, Lcom/eltechs/axs/KeyCodesX;->KEY_V:Lcom/eltechs/axs/KeyCodesX;

    const/16 v3, 0x8cf

    invoke-direct {v1, p0, v2, v3}, Lcom/eltechs/axs/Keyboard$XKey;-><init>(Lcom/eltechs/axs/Keyboard;Lcom/eltechs/axs/KeyCodesX;I)V

    const/16 v2, 0x2261

    aput-object v1, v0, v2

    .line 976
    iget-object v0, p0, Lcom/eltechs/axs/Keyboard;->UnicodeToXKeyMap:[Lcom/eltechs/axs/Keyboard$XKey;

    new-instance v1, Lcom/eltechs/axs/Keyboard$XKey;

    sget-object v2, Lcom/eltechs/axs/KeyCodesX;->KEY_W:Lcom/eltechs/axs/KeyCodesX;

    const/16 v3, 0x8bc

    invoke-direct {v1, p0, v2, v3}, Lcom/eltechs/axs/Keyboard$XKey;-><init>(Lcom/eltechs/axs/Keyboard;Lcom/eltechs/axs/KeyCodesX;I)V

    const/16 v2, 0x2264

    aput-object v1, v0, v2

    .line 977
    iget-object v0, p0, Lcom/eltechs/axs/Keyboard;->UnicodeToXKeyMap:[Lcom/eltechs/axs/Keyboard$XKey;

    new-instance v1, Lcom/eltechs/axs/Keyboard$XKey;

    sget-object v2, Lcom/eltechs/axs/KeyCodesX;->KEY_X:Lcom/eltechs/axs/KeyCodesX;

    const/16 v3, 0x8be

    invoke-direct {v1, p0, v2, v3}, Lcom/eltechs/axs/Keyboard$XKey;-><init>(Lcom/eltechs/axs/Keyboard;Lcom/eltechs/axs/KeyCodesX;I)V

    const/16 v2, 0x2265

    aput-object v1, v0, v2

    .line 978
    iget-object v0, p0, Lcom/eltechs/axs/Keyboard;->UnicodeToXKeyMap:[Lcom/eltechs/axs/Keyboard$XKey;

    new-instance v1, Lcom/eltechs/axs/Keyboard$XKey;

    sget-object v2, Lcom/eltechs/axs/KeyCodesX;->KEY_Y:Lcom/eltechs/axs/KeyCodesX;

    const/16 v3, 0x8da

    invoke-direct {v1, p0, v2, v3}, Lcom/eltechs/axs/Keyboard$XKey;-><init>(Lcom/eltechs/axs/Keyboard;Lcom/eltechs/axs/KeyCodesX;I)V

    const/16 v2, 0x2282

    aput-object v1, v0, v2

    .line 979
    iget-object v0, p0, Lcom/eltechs/axs/Keyboard;->UnicodeToXKeyMap:[Lcom/eltechs/axs/Keyboard$XKey;

    new-instance v1, Lcom/eltechs/axs/Keyboard$XKey;

    sget-object v2, Lcom/eltechs/axs/KeyCodesX;->KEY_Z:Lcom/eltechs/axs/KeyCodesX;

    const/16 v3, 0x8db

    invoke-direct {v1, p0, v2, v3}, Lcom/eltechs/axs/Keyboard$XKey;-><init>(Lcom/eltechs/axs/Keyboard;Lcom/eltechs/axs/KeyCodesX;I)V

    const/16 v2, 0x2283

    aput-object v1, v0, v2

    .line 980
    iget-object v0, p0, Lcom/eltechs/axs/Keyboard;->UnicodeToXKeyMap:[Lcom/eltechs/axs/Keyboard$XKey;

    new-instance v1, Lcom/eltechs/axs/Keyboard$XKey;

    sget-object v2, Lcom/eltechs/axs/KeyCodesX;->KEY_A:Lcom/eltechs/axs/KeyCodesX;

    const/16 v3, 0xbdc

    invoke-direct {v1, p0, v2, v3}, Lcom/eltechs/axs/Keyboard$XKey;-><init>(Lcom/eltechs/axs/Keyboard;Lcom/eltechs/axs/KeyCodesX;I)V

    const/16 v2, 0x22a2

    aput-object v1, v0, v2

    .line 981
    iget-object v0, p0, Lcom/eltechs/axs/Keyboard;->UnicodeToXKeyMap:[Lcom/eltechs/axs/Keyboard$XKey;

    new-instance v1, Lcom/eltechs/axs/Keyboard$XKey;

    sget-object v2, Lcom/eltechs/axs/KeyCodesX;->KEY_B:Lcom/eltechs/axs/KeyCodesX;

    const/16 v3, 0xbfc

    invoke-direct {v1, p0, v2, v3}, Lcom/eltechs/axs/Keyboard$XKey;-><init>(Lcom/eltechs/axs/Keyboard;Lcom/eltechs/axs/KeyCodesX;I)V

    const/16 v2, 0x22a3

    aput-object v1, v0, v2

    .line 982
    iget-object v0, p0, Lcom/eltechs/axs/Keyboard;->UnicodeToXKeyMap:[Lcom/eltechs/axs/Keyboard$XKey;

    new-instance v1, Lcom/eltechs/axs/Keyboard$XKey;

    sget-object v2, Lcom/eltechs/axs/KeyCodesX;->KEY_C:Lcom/eltechs/axs/KeyCodesX;

    const/16 v3, 0xbce

    invoke-direct {v1, p0, v2, v3}, Lcom/eltechs/axs/Keyboard$XKey;-><init>(Lcom/eltechs/axs/Keyboard;Lcom/eltechs/axs/KeyCodesX;I)V

    const/16 v2, 0x22a4

    aput-object v1, v0, v2

    .line 983
    iget-object v0, p0, Lcom/eltechs/axs/Keyboard;->UnicodeToXKeyMap:[Lcom/eltechs/axs/Keyboard$XKey;

    new-instance v1, Lcom/eltechs/axs/Keyboard$XKey;

    sget-object v2, Lcom/eltechs/axs/KeyCodesX;->KEY_D:Lcom/eltechs/axs/KeyCodesX;

    const/16 v3, 0xbc2

    invoke-direct {v1, p0, v2, v3}, Lcom/eltechs/axs/Keyboard$XKey;-><init>(Lcom/eltechs/axs/Keyboard;Lcom/eltechs/axs/KeyCodesX;I)V

    const/16 v2, 0x22a5

    aput-object v1, v0, v2

    .line 984
    iget-object v0, p0, Lcom/eltechs/axs/Keyboard;->UnicodeToXKeyMap:[Lcom/eltechs/axs/Keyboard$XKey;

    new-instance v1, Lcom/eltechs/axs/Keyboard$XKey;

    sget-object v2, Lcom/eltechs/axs/KeyCodesX;->KEY_E:Lcom/eltechs/axs/KeyCodesX;

    const/16 v3, 0xbd3

    invoke-direct {v1, p0, v2, v3}, Lcom/eltechs/axs/Keyboard$XKey;-><init>(Lcom/eltechs/axs/Keyboard;Lcom/eltechs/axs/KeyCodesX;I)V

    const/16 v2, 0x2308

    aput-object v1, v0, v2

    .line 985
    iget-object v0, p0, Lcom/eltechs/axs/Keyboard;->UnicodeToXKeyMap:[Lcom/eltechs/axs/Keyboard$XKey;

    new-instance v1, Lcom/eltechs/axs/Keyboard$XKey;

    sget-object v2, Lcom/eltechs/axs/KeyCodesX;->KEY_F:Lcom/eltechs/axs/KeyCodesX;

    const/16 v3, 0xbc4

    invoke-direct {v1, p0, v2, v3}, Lcom/eltechs/axs/Keyboard$XKey;-><init>(Lcom/eltechs/axs/Keyboard;Lcom/eltechs/axs/KeyCodesX;I)V

    const/16 v2, 0x230a

    aput-object v1, v0, v2

    .line 986
    iget-object v0, p0, Lcom/eltechs/axs/Keyboard;->UnicodeToXKeyMap:[Lcom/eltechs/axs/Keyboard$XKey;

    new-instance v1, Lcom/eltechs/axs/Keyboard$XKey;

    sget-object v2, Lcom/eltechs/axs/KeyCodesX;->KEY_G:Lcom/eltechs/axs/KeyCodesX;

    const/16 v3, 0xafa

    invoke-direct {v1, p0, v2, v3}, Lcom/eltechs/axs/Keyboard$XKey;-><init>(Lcom/eltechs/axs/Keyboard;Lcom/eltechs/axs/KeyCodesX;I)V

    const/16 v2, 0x2315

    aput-object v1, v0, v2

    .line 987
    iget-object v0, p0, Lcom/eltechs/axs/Keyboard;->UnicodeToXKeyMap:[Lcom/eltechs/axs/Keyboard$XKey;

    new-instance v1, Lcom/eltechs/axs/Keyboard$XKey;

    sget-object v2, Lcom/eltechs/axs/KeyCodesX;->KEY_H:Lcom/eltechs/axs/KeyCodesX;

    const/16 v3, 0x8a4

    invoke-direct {v1, p0, v2, v3}, Lcom/eltechs/axs/Keyboard$XKey;-><init>(Lcom/eltechs/axs/Keyboard;Lcom/eltechs/axs/KeyCodesX;I)V

    const/16 v2, 0x2320

    aput-object v1, v0, v2

    .line 988
    iget-object v0, p0, Lcom/eltechs/axs/Keyboard;->UnicodeToXKeyMap:[Lcom/eltechs/axs/Keyboard$XKey;

    new-instance v1, Lcom/eltechs/axs/Keyboard$XKey;

    sget-object v2, Lcom/eltechs/axs/KeyCodesX;->KEY_I:Lcom/eltechs/axs/KeyCodesX;

    const/16 v3, 0x8a5

    invoke-direct {v1, p0, v2, v3}, Lcom/eltechs/axs/Keyboard$XKey;-><init>(Lcom/eltechs/axs/Keyboard;Lcom/eltechs/axs/KeyCodesX;I)V

    const/16 v2, 0x2321

    aput-object v1, v0, v2

    .line 989
    iget-object v0, p0, Lcom/eltechs/axs/Keyboard;->UnicodeToXKeyMap:[Lcom/eltechs/axs/Keyboard$XKey;

    new-instance v1, Lcom/eltechs/axs/Keyboard$XKey;

    sget-object v2, Lcom/eltechs/axs/KeyCodesX;->KEY_J:Lcom/eltechs/axs/KeyCodesX;

    const/16 v3, 0xbcc

    invoke-direct {v1, p0, v2, v3}, Lcom/eltechs/axs/Keyboard$XKey;-><init>(Lcom/eltechs/axs/Keyboard;Lcom/eltechs/axs/KeyCodesX;I)V

    const/16 v2, 0x2395

    aput-object v1, v0, v2

    .line 990
    iget-object v0, p0, Lcom/eltechs/axs/Keyboard;->UnicodeToXKeyMap:[Lcom/eltechs/axs/Keyboard$XKey;

    new-instance v1, Lcom/eltechs/axs/Keyboard$XKey;

    sget-object v2, Lcom/eltechs/axs/KeyCodesX;->KEY_K:Lcom/eltechs/axs/KeyCodesX;

    const/16 v3, 0x8ab

    invoke-direct {v1, p0, v2, v3}, Lcom/eltechs/axs/Keyboard$XKey;-><init>(Lcom/eltechs/axs/Keyboard;Lcom/eltechs/axs/KeyCodesX;I)V

    const/16 v2, 0x239b

    aput-object v1, v0, v2

    .line 991
    iget-object v0, p0, Lcom/eltechs/axs/Keyboard;->UnicodeToXKeyMap:[Lcom/eltechs/axs/Keyboard$XKey;

    new-instance v1, Lcom/eltechs/axs/Keyboard$XKey;

    sget-object v2, Lcom/eltechs/axs/KeyCodesX;->KEY_L:Lcom/eltechs/axs/KeyCodesX;

    const/16 v3, 0x8ac

    invoke-direct {v1, p0, v2, v3}, Lcom/eltechs/axs/Keyboard$XKey;-><init>(Lcom/eltechs/axs/Keyboard;Lcom/eltechs/axs/KeyCodesX;I)V

    const/16 v2, 0x239d

    aput-object v1, v0, v2

    .line 992
    iget-object v0, p0, Lcom/eltechs/axs/Keyboard;->UnicodeToXKeyMap:[Lcom/eltechs/axs/Keyboard$XKey;

    new-instance v1, Lcom/eltechs/axs/Keyboard$XKey;

    sget-object v2, Lcom/eltechs/axs/KeyCodesX;->KEY_M:Lcom/eltechs/axs/KeyCodesX;

    const/16 v3, 0x8ad

    invoke-direct {v1, p0, v2, v3}, Lcom/eltechs/axs/Keyboard$XKey;-><init>(Lcom/eltechs/axs/Keyboard;Lcom/eltechs/axs/KeyCodesX;I)V

    const/16 v2, 0x239e

    aput-object v1, v0, v2

    .line 993
    iget-object v0, p0, Lcom/eltechs/axs/Keyboard;->UnicodeToXKeyMap:[Lcom/eltechs/axs/Keyboard$XKey;

    new-instance v1, Lcom/eltechs/axs/Keyboard$XKey;

    sget-object v2, Lcom/eltechs/axs/KeyCodesX;->KEY_N:Lcom/eltechs/axs/KeyCodesX;

    const/16 v3, 0x8ae

    invoke-direct {v1, p0, v2, v3}, Lcom/eltechs/axs/Keyboard$XKey;-><init>(Lcom/eltechs/axs/Keyboard;Lcom/eltechs/axs/KeyCodesX;I)V

    const/16 v2, 0x23a0

    aput-object v1, v0, v2

    .line 994
    iget-object v0, p0, Lcom/eltechs/axs/Keyboard;->UnicodeToXKeyMap:[Lcom/eltechs/axs/Keyboard$XKey;

    new-instance v1, Lcom/eltechs/axs/Keyboard$XKey;

    sget-object v2, Lcom/eltechs/axs/KeyCodesX;->KEY_O:Lcom/eltechs/axs/KeyCodesX;

    const/16 v3, 0x8a7

    invoke-direct {v1, p0, v2, v3}, Lcom/eltechs/axs/Keyboard$XKey;-><init>(Lcom/eltechs/axs/Keyboard;Lcom/eltechs/axs/KeyCodesX;I)V

    const/16 v2, 0x23a1

    aput-object v1, v0, v2

    .line 995
    iget-object v0, p0, Lcom/eltechs/axs/Keyboard;->UnicodeToXKeyMap:[Lcom/eltechs/axs/Keyboard$XKey;

    new-instance v1, Lcom/eltechs/axs/Keyboard$XKey;

    sget-object v2, Lcom/eltechs/axs/KeyCodesX;->KEY_P:Lcom/eltechs/axs/KeyCodesX;

    const/16 v3, 0x8a8

    invoke-direct {v1, p0, v2, v3}, Lcom/eltechs/axs/Keyboard$XKey;-><init>(Lcom/eltechs/axs/Keyboard;Lcom/eltechs/axs/KeyCodesX;I)V

    const/16 v2, 0x23a3

    aput-object v1, v0, v2

    .line 996
    iget-object v0, p0, Lcom/eltechs/axs/Keyboard;->UnicodeToXKeyMap:[Lcom/eltechs/axs/Keyboard$XKey;

    new-instance v1, Lcom/eltechs/axs/Keyboard$XKey;

    sget-object v2, Lcom/eltechs/axs/KeyCodesX;->KEY_Q:Lcom/eltechs/axs/KeyCodesX;

    const/16 v3, 0x8a9

    invoke-direct {v1, p0, v2, v3}, Lcom/eltechs/axs/Keyboard$XKey;-><init>(Lcom/eltechs/axs/Keyboard;Lcom/eltechs/axs/KeyCodesX;I)V

    const/16 v2, 0x23a4

    aput-object v1, v0, v2

    .line 997
    iget-object v0, p0, Lcom/eltechs/axs/Keyboard;->UnicodeToXKeyMap:[Lcom/eltechs/axs/Keyboard$XKey;

    new-instance v1, Lcom/eltechs/axs/Keyboard$XKey;

    sget-object v2, Lcom/eltechs/axs/KeyCodesX;->KEY_R:Lcom/eltechs/axs/KeyCodesX;

    const/16 v3, 0x8aa

    invoke-direct {v1, p0, v2, v3}, Lcom/eltechs/axs/Keyboard$XKey;-><init>(Lcom/eltechs/axs/Keyboard;Lcom/eltechs/axs/KeyCodesX;I)V

    const/16 v2, 0x23a6

    aput-object v1, v0, v2

    .line 998
    iget-object v0, p0, Lcom/eltechs/axs/Keyboard;->UnicodeToXKeyMap:[Lcom/eltechs/axs/Keyboard$XKey;

    new-instance v1, Lcom/eltechs/axs/Keyboard$XKey;

    sget-object v2, Lcom/eltechs/axs/KeyCodesX;->KEY_S:Lcom/eltechs/axs/KeyCodesX;

    const/16 v3, 0x8af

    invoke-direct {v1, p0, v2, v3}, Lcom/eltechs/axs/Keyboard$XKey;-><init>(Lcom/eltechs/axs/Keyboard;Lcom/eltechs/axs/KeyCodesX;I)V

    const/16 v2, 0x23a8

    aput-object v1, v0, v2

    .line 999
    iget-object v0, p0, Lcom/eltechs/axs/Keyboard;->UnicodeToXKeyMap:[Lcom/eltechs/axs/Keyboard$XKey;

    new-instance v1, Lcom/eltechs/axs/Keyboard$XKey;

    sget-object v2, Lcom/eltechs/axs/KeyCodesX;->KEY_T:Lcom/eltechs/axs/KeyCodesX;

    const/16 v3, 0x8b0

    invoke-direct {v1, p0, v2, v3}, Lcom/eltechs/axs/Keyboard$XKey;-><init>(Lcom/eltechs/axs/Keyboard;Lcom/eltechs/axs/KeyCodesX;I)V

    const/16 v2, 0x23ac

    aput-object v1, v0, v2

    .line 1000
    iget-object v0, p0, Lcom/eltechs/axs/Keyboard;->UnicodeToXKeyMap:[Lcom/eltechs/axs/Keyboard$XKey;

    new-instance v1, Lcom/eltechs/axs/Keyboard$XKey;

    sget-object v2, Lcom/eltechs/axs/KeyCodesX;->KEY_U:Lcom/eltechs/axs/KeyCodesX;

    const/16 v3, 0x8a1

    invoke-direct {v1, p0, v2, v3}, Lcom/eltechs/axs/Keyboard$XKey;-><init>(Lcom/eltechs/axs/Keyboard;Lcom/eltechs/axs/KeyCodesX;I)V

    const/16 v2, 0x23b7

    aput-object v1, v0, v2

    .line 1001
    iget-object v0, p0, Lcom/eltechs/axs/Keyboard;->UnicodeToXKeyMap:[Lcom/eltechs/axs/Keyboard$XKey;

    new-instance v1, Lcom/eltechs/axs/Keyboard$XKey;

    sget-object v2, Lcom/eltechs/axs/KeyCodesX;->KEY_V:Lcom/eltechs/axs/KeyCodesX;

    const/16 v3, 0x9ef

    invoke-direct {v1, p0, v2, v3}, Lcom/eltechs/axs/Keyboard$XKey;-><init>(Lcom/eltechs/axs/Keyboard;Lcom/eltechs/axs/KeyCodesX;I)V

    const/16 v2, 0x23ba

    aput-object v1, v0, v2

    .line 1002
    iget-object v0, p0, Lcom/eltechs/axs/Keyboard;->UnicodeToXKeyMap:[Lcom/eltechs/axs/Keyboard$XKey;

    new-instance v1, Lcom/eltechs/axs/Keyboard$XKey;

    sget-object v2, Lcom/eltechs/axs/KeyCodesX;->KEY_W:Lcom/eltechs/axs/KeyCodesX;

    const/16 v3, 0x9f0

    invoke-direct {v1, p0, v2, v3}, Lcom/eltechs/axs/Keyboard$XKey;-><init>(Lcom/eltechs/axs/Keyboard;Lcom/eltechs/axs/KeyCodesX;I)V

    const/16 v2, 0x23bb

    aput-object v1, v0, v2

    .line 1003
    iget-object v0, p0, Lcom/eltechs/axs/Keyboard;->UnicodeToXKeyMap:[Lcom/eltechs/axs/Keyboard$XKey;

    new-instance v1, Lcom/eltechs/axs/Keyboard$XKey;

    sget-object v2, Lcom/eltechs/axs/KeyCodesX;->KEY_X:Lcom/eltechs/axs/KeyCodesX;

    const/16 v3, 0x9f2

    invoke-direct {v1, p0, v2, v3}, Lcom/eltechs/axs/Keyboard$XKey;-><init>(Lcom/eltechs/axs/Keyboard;Lcom/eltechs/axs/KeyCodesX;I)V

    const/16 v2, 0x23bc

    aput-object v1, v0, v2

    .line 1004
    iget-object v0, p0, Lcom/eltechs/axs/Keyboard;->UnicodeToXKeyMap:[Lcom/eltechs/axs/Keyboard$XKey;

    new-instance v1, Lcom/eltechs/axs/Keyboard$XKey;

    sget-object v2, Lcom/eltechs/axs/KeyCodesX;->KEY_Y:Lcom/eltechs/axs/KeyCodesX;

    const/16 v3, 0x9f3

    invoke-direct {v1, p0, v2, v3}, Lcom/eltechs/axs/Keyboard$XKey;-><init>(Lcom/eltechs/axs/Keyboard;Lcom/eltechs/axs/KeyCodesX;I)V

    const/16 v2, 0x23bd

    aput-object v1, v0, v2

    .line 1005
    iget-object v0, p0, Lcom/eltechs/axs/Keyboard;->UnicodeToXKeyMap:[Lcom/eltechs/axs/Keyboard$XKey;

    new-instance v1, Lcom/eltechs/axs/Keyboard$XKey;

    sget-object v2, Lcom/eltechs/axs/KeyCodesX;->KEY_Z:Lcom/eltechs/axs/KeyCodesX;

    const/16 v3, 0x9e2

    invoke-direct {v1, p0, v2, v3}, Lcom/eltechs/axs/Keyboard$XKey;-><init>(Lcom/eltechs/axs/Keyboard;Lcom/eltechs/axs/KeyCodesX;I)V

    const/16 v2, 0x2409

    aput-object v1, v0, v2

    .line 1006
    iget-object v0, p0, Lcom/eltechs/axs/Keyboard;->UnicodeToXKeyMap:[Lcom/eltechs/axs/Keyboard$XKey;

    new-instance v1, Lcom/eltechs/axs/Keyboard$XKey;

    sget-object v2, Lcom/eltechs/axs/KeyCodesX;->KEY_A:Lcom/eltechs/axs/KeyCodesX;

    const/16 v3, 0x9e5

    invoke-direct {v1, p0, v2, v3}, Lcom/eltechs/axs/Keyboard$XKey;-><init>(Lcom/eltechs/axs/Keyboard;Lcom/eltechs/axs/KeyCodesX;I)V

    const/16 v2, 0x240a

    aput-object v1, v0, v2

    .line 1007
    iget-object v0, p0, Lcom/eltechs/axs/Keyboard;->UnicodeToXKeyMap:[Lcom/eltechs/axs/Keyboard$XKey;

    new-instance v1, Lcom/eltechs/axs/Keyboard$XKey;

    sget-object v2, Lcom/eltechs/axs/KeyCodesX;->KEY_B:Lcom/eltechs/axs/KeyCodesX;

    const/16 v3, 0x9e9

    invoke-direct {v1, p0, v2, v3}, Lcom/eltechs/axs/Keyboard$XKey;-><init>(Lcom/eltechs/axs/Keyboard;Lcom/eltechs/axs/KeyCodesX;I)V

    const/16 v2, 0x240b

    aput-object v1, v0, v2

    .line 1008
    iget-object v0, p0, Lcom/eltechs/axs/Keyboard;->UnicodeToXKeyMap:[Lcom/eltechs/axs/Keyboard$XKey;

    new-instance v1, Lcom/eltechs/axs/Keyboard$XKey;

    sget-object v2, Lcom/eltechs/axs/KeyCodesX;->KEY_C:Lcom/eltechs/axs/KeyCodesX;

    const/16 v3, 0x9e3

    invoke-direct {v1, p0, v2, v3}, Lcom/eltechs/axs/Keyboard$XKey;-><init>(Lcom/eltechs/axs/Keyboard;Lcom/eltechs/axs/KeyCodesX;I)V

    const/16 v2, 0x240c

    aput-object v1, v0, v2

    .line 1009
    iget-object v0, p0, Lcom/eltechs/axs/Keyboard;->UnicodeToXKeyMap:[Lcom/eltechs/axs/Keyboard$XKey;

    new-instance v1, Lcom/eltechs/axs/Keyboard$XKey;

    sget-object v2, Lcom/eltechs/axs/KeyCodesX;->KEY_D:Lcom/eltechs/axs/KeyCodesX;

    const/16 v3, 0x9e4

    invoke-direct {v1, p0, v2, v3}, Lcom/eltechs/axs/Keyboard$XKey;-><init>(Lcom/eltechs/axs/Keyboard;Lcom/eltechs/axs/KeyCodesX;I)V

    const/16 v2, 0x240d

    aput-object v1, v0, v2

    .line 1010
    iget-object v0, p0, Lcom/eltechs/axs/Keyboard;->UnicodeToXKeyMap:[Lcom/eltechs/axs/Keyboard$XKey;

    new-instance v1, Lcom/eltechs/axs/Keyboard$XKey;

    sget-object v2, Lcom/eltechs/axs/KeyCodesX;->KEY_E:Lcom/eltechs/axs/KeyCodesX;

    const/16 v3, 0x9e8

    invoke-direct {v1, p0, v2, v3}, Lcom/eltechs/axs/Keyboard$XKey;-><init>(Lcom/eltechs/axs/Keyboard;Lcom/eltechs/axs/KeyCodesX;I)V

    const/16 v2, 0x2424

    aput-object v1, v0, v2

    .line 1011
    iget-object v0, p0, Lcom/eltechs/axs/Keyboard;->UnicodeToXKeyMap:[Lcom/eltechs/axs/Keyboard$XKey;

    new-instance v1, Lcom/eltechs/axs/Keyboard$XKey;

    sget-object v2, Lcom/eltechs/axs/KeyCodesX;->KEY_F:Lcom/eltechs/axs/KeyCodesX;

    const/16 v3, 0x9eb

    invoke-direct {v1, p0, v2, v3}, Lcom/eltechs/axs/Keyboard$XKey;-><init>(Lcom/eltechs/axs/Keyboard;Lcom/eltechs/axs/KeyCodesX;I)V

    const/16 v2, 0x2510

    aput-object v1, v0, v2

    .line 1012
    iget-object v0, p0, Lcom/eltechs/axs/Keyboard;->UnicodeToXKeyMap:[Lcom/eltechs/axs/Keyboard$XKey;

    new-instance v1, Lcom/eltechs/axs/Keyboard$XKey;

    sget-object v2, Lcom/eltechs/axs/KeyCodesX;->KEY_G:Lcom/eltechs/axs/KeyCodesX;

    const/16 v3, 0x9ed

    invoke-direct {v1, p0, v2, v3}, Lcom/eltechs/axs/Keyboard$XKey;-><init>(Lcom/eltechs/axs/Keyboard;Lcom/eltechs/axs/KeyCodesX;I)V

    const/16 v2, 0x2514

    aput-object v1, v0, v2

    .line 1013
    iget-object v0, p0, Lcom/eltechs/axs/Keyboard;->UnicodeToXKeyMap:[Lcom/eltechs/axs/Keyboard$XKey;

    new-instance v1, Lcom/eltechs/axs/Keyboard$XKey;

    sget-object v2, Lcom/eltechs/axs/KeyCodesX;->KEY_H:Lcom/eltechs/axs/KeyCodesX;

    const/16 v3, 0x9ea

    invoke-direct {v1, p0, v2, v3}, Lcom/eltechs/axs/Keyboard$XKey;-><init>(Lcom/eltechs/axs/Keyboard;Lcom/eltechs/axs/KeyCodesX;I)V

    const/16 v2, 0x2518

    aput-object v1, v0, v2

    .line 1014
    iget-object v0, p0, Lcom/eltechs/axs/Keyboard;->UnicodeToXKeyMap:[Lcom/eltechs/axs/Keyboard$XKey;

    new-instance v1, Lcom/eltechs/axs/Keyboard$XKey;

    sget-object v2, Lcom/eltechs/axs/KeyCodesX;->KEY_I:Lcom/eltechs/axs/KeyCodesX;

    const/16 v3, 0x9f4

    invoke-direct {v1, p0, v2, v3}, Lcom/eltechs/axs/Keyboard$XKey;-><init>(Lcom/eltechs/axs/Keyboard;Lcom/eltechs/axs/KeyCodesX;I)V

    const/16 v2, 0x251c

    aput-object v1, v0, v2

    .line 1015
    iget-object v0, p0, Lcom/eltechs/axs/Keyboard;->UnicodeToXKeyMap:[Lcom/eltechs/axs/Keyboard$XKey;

    new-instance v1, Lcom/eltechs/axs/Keyboard$XKey;

    sget-object v2, Lcom/eltechs/axs/KeyCodesX;->KEY_J:Lcom/eltechs/axs/KeyCodesX;

    const/16 v3, 0x9f5

    invoke-direct {v1, p0, v2, v3}, Lcom/eltechs/axs/Keyboard$XKey;-><init>(Lcom/eltechs/axs/Keyboard;Lcom/eltechs/axs/KeyCodesX;I)V

    const/16 v2, 0x2524

    aput-object v1, v0, v2

    .line 1016
    iget-object v0, p0, Lcom/eltechs/axs/Keyboard;->UnicodeToXKeyMap:[Lcom/eltechs/axs/Keyboard$XKey;

    new-instance v1, Lcom/eltechs/axs/Keyboard$XKey;

    sget-object v2, Lcom/eltechs/axs/KeyCodesX;->KEY_K:Lcom/eltechs/axs/KeyCodesX;

    const/16 v3, 0x9f7

    invoke-direct {v1, p0, v2, v3}, Lcom/eltechs/axs/Keyboard$XKey;-><init>(Lcom/eltechs/axs/Keyboard;Lcom/eltechs/axs/KeyCodesX;I)V

    const/16 v2, 0x252c

    aput-object v1, v0, v2

    .line 1017
    iget-object v0, p0, Lcom/eltechs/axs/Keyboard;->UnicodeToXKeyMap:[Lcom/eltechs/axs/Keyboard$XKey;

    new-instance v1, Lcom/eltechs/axs/Keyboard$XKey;

    sget-object v2, Lcom/eltechs/axs/KeyCodesX;->KEY_L:Lcom/eltechs/axs/KeyCodesX;

    const/16 v3, 0x9f6

    invoke-direct {v1, p0, v2, v3}, Lcom/eltechs/axs/Keyboard$XKey;-><init>(Lcom/eltechs/axs/Keyboard;Lcom/eltechs/axs/KeyCodesX;I)V

    const/16 v2, 0x2534

    aput-object v1, v0, v2

    .line 1018
    iget-object v0, p0, Lcom/eltechs/axs/Keyboard;->UnicodeToXKeyMap:[Lcom/eltechs/axs/Keyboard$XKey;

    new-instance v1, Lcom/eltechs/axs/Keyboard$XKey;

    sget-object v2, Lcom/eltechs/axs/KeyCodesX;->KEY_M:Lcom/eltechs/axs/KeyCodesX;

    const/16 v3, 0x9ee

    invoke-direct {v1, p0, v2, v3}, Lcom/eltechs/axs/Keyboard$XKey;-><init>(Lcom/eltechs/axs/Keyboard;Lcom/eltechs/axs/KeyCodesX;I)V

    const/16 v2, 0x253c

    aput-object v1, v0, v2

    .line 1019
    iget-object v0, p0, Lcom/eltechs/axs/Keyboard;->UnicodeToXKeyMap:[Lcom/eltechs/axs/Keyboard$XKey;

    new-instance v1, Lcom/eltechs/axs/Keyboard$XKey;

    sget-object v2, Lcom/eltechs/axs/KeyCodesX;->KEY_N:Lcom/eltechs/axs/KeyCodesX;

    const/16 v3, 0x9e1

    invoke-direct {v1, p0, v2, v3}, Lcom/eltechs/axs/Keyboard$XKey;-><init>(Lcom/eltechs/axs/Keyboard;Lcom/eltechs/axs/KeyCodesX;I)V

    const/16 v2, 0x2592

    aput-object v1, v0, v2

    .line 1020
    iget-object v0, p0, Lcom/eltechs/axs/Keyboard;->UnicodeToXKeyMap:[Lcom/eltechs/axs/Keyboard$XKey;

    new-instance v1, Lcom/eltechs/axs/Keyboard$XKey;

    sget-object v2, Lcom/eltechs/axs/KeyCodesX;->KEY_O:Lcom/eltechs/axs/KeyCodesX;

    const/16 v3, 0x9e0

    invoke-direct {v1, p0, v2, v3}, Lcom/eltechs/axs/Keyboard$XKey;-><init>(Lcom/eltechs/axs/Keyboard;Lcom/eltechs/axs/KeyCodesX;I)V

    const/16 v2, 0x25c6

    aput-object v1, v0, v2

    .line 1021
    iget-object v0, p0, Lcom/eltechs/axs/Keyboard;->UnicodeToXKeyMap:[Lcom/eltechs/axs/Keyboard$XKey;

    new-instance v1, Lcom/eltechs/axs/Keyboard$XKey;

    sget-object v2, Lcom/eltechs/axs/KeyCodesX;->KEY_P:Lcom/eltechs/axs/KeyCodesX;

    const/16 v3, 0xaf9

    invoke-direct {v1, p0, v2, v3}, Lcom/eltechs/axs/Keyboard$XKey;-><init>(Lcom/eltechs/axs/Keyboard;Lcom/eltechs/axs/KeyCodesX;I)V

    const/16 v2, 0x260e

    aput-object v1, v0, v2

    .line 1022
    iget-object v0, p0, Lcom/eltechs/axs/Keyboard;->UnicodeToXKeyMap:[Lcom/eltechs/axs/Keyboard$XKey;

    new-instance v1, Lcom/eltechs/axs/Keyboard$XKey;

    sget-object v2, Lcom/eltechs/axs/KeyCodesX;->KEY_Q:Lcom/eltechs/axs/KeyCodesX;

    const/16 v3, 0xaf8

    invoke-direct {v1, p0, v2, v3}, Lcom/eltechs/axs/Keyboard$XKey;-><init>(Lcom/eltechs/axs/Keyboard;Lcom/eltechs/axs/KeyCodesX;I)V

    const/16 v2, 0x2640

    aput-object v1, v0, v2

    .line 1023
    iget-object v0, p0, Lcom/eltechs/axs/Keyboard;->UnicodeToXKeyMap:[Lcom/eltechs/axs/Keyboard$XKey;

    new-instance v1, Lcom/eltechs/axs/Keyboard$XKey;

    sget-object v2, Lcom/eltechs/axs/KeyCodesX;->KEY_R:Lcom/eltechs/axs/KeyCodesX;

    const/16 v3, 0xaf7

    invoke-direct {v1, p0, v2, v3}, Lcom/eltechs/axs/Keyboard$XKey;-><init>(Lcom/eltechs/axs/Keyboard;Lcom/eltechs/axs/KeyCodesX;I)V

    const/16 v2, 0x2642

    aput-object v1, v0, v2

    .line 1024
    iget-object v0, p0, Lcom/eltechs/axs/Keyboard;->UnicodeToXKeyMap:[Lcom/eltechs/axs/Keyboard$XKey;

    new-instance v1, Lcom/eltechs/axs/Keyboard$XKey;

    sget-object v2, Lcom/eltechs/axs/KeyCodesX;->KEY_S:Lcom/eltechs/axs/KeyCodesX;

    const/16 v3, 0xaec

    invoke-direct {v1, p0, v2, v3}, Lcom/eltechs/axs/Keyboard$XKey;-><init>(Lcom/eltechs/axs/Keyboard;Lcom/eltechs/axs/KeyCodesX;I)V

    const/16 v2, 0x2663

    aput-object v1, v0, v2

    .line 1025
    iget-object v0, p0, Lcom/eltechs/axs/Keyboard;->UnicodeToXKeyMap:[Lcom/eltechs/axs/Keyboard$XKey;

    new-instance v1, Lcom/eltechs/axs/Keyboard$XKey;

    sget-object v2, Lcom/eltechs/axs/KeyCodesX;->KEY_T:Lcom/eltechs/axs/KeyCodesX;

    const/16 v3, 0xaee

    invoke-direct {v1, p0, v2, v3}, Lcom/eltechs/axs/Keyboard$XKey;-><init>(Lcom/eltechs/axs/Keyboard;Lcom/eltechs/axs/KeyCodesX;I)V

    const/16 v2, 0x2665

    aput-object v1, v0, v2

    .line 1026
    iget-object v0, p0, Lcom/eltechs/axs/Keyboard;->UnicodeToXKeyMap:[Lcom/eltechs/axs/Keyboard$XKey;

    new-instance v1, Lcom/eltechs/axs/Keyboard$XKey;

    sget-object v2, Lcom/eltechs/axs/KeyCodesX;->KEY_U:Lcom/eltechs/axs/KeyCodesX;

    const/16 v3, 0xaed

    invoke-direct {v1, p0, v2, v3}, Lcom/eltechs/axs/Keyboard$XKey;-><init>(Lcom/eltechs/axs/Keyboard;Lcom/eltechs/axs/KeyCodesX;I)V

    const/16 v2, 0x2666

    aput-object v1, v0, v2

    .line 1027
    iget-object v0, p0, Lcom/eltechs/axs/Keyboard;->UnicodeToXKeyMap:[Lcom/eltechs/axs/Keyboard$XKey;

    new-instance v1, Lcom/eltechs/axs/Keyboard$XKey;

    sget-object v2, Lcom/eltechs/axs/KeyCodesX;->KEY_V:Lcom/eltechs/axs/KeyCodesX;

    const/16 v3, 0xaf6

    invoke-direct {v1, p0, v2, v3}, Lcom/eltechs/axs/Keyboard$XKey;-><init>(Lcom/eltechs/axs/Keyboard;Lcom/eltechs/axs/KeyCodesX;I)V

    const/16 v2, 0x266d

    aput-object v1, v0, v2

    .line 1028
    iget-object v0, p0, Lcom/eltechs/axs/Keyboard;->UnicodeToXKeyMap:[Lcom/eltechs/axs/Keyboard$XKey;

    new-instance v1, Lcom/eltechs/axs/Keyboard$XKey;

    sget-object v2, Lcom/eltechs/axs/KeyCodesX;->KEY_W:Lcom/eltechs/axs/KeyCodesX;

    const/16 v3, 0xaf5

    invoke-direct {v1, p0, v2, v3}, Lcom/eltechs/axs/Keyboard$XKey;-><init>(Lcom/eltechs/axs/Keyboard;Lcom/eltechs/axs/KeyCodesX;I)V

    const/16 v2, 0x266f

    aput-object v1, v0, v2

    .line 1029
    iget-object v0, p0, Lcom/eltechs/axs/Keyboard;->UnicodeToXKeyMap:[Lcom/eltechs/axs/Keyboard$XKey;

    new-instance v1, Lcom/eltechs/axs/Keyboard$XKey;

    sget-object v2, Lcom/eltechs/axs/KeyCodesX;->KEY_X:Lcom/eltechs/axs/KeyCodesX;

    const/16 v3, 0xaf3

    invoke-direct {v1, p0, v2, v3}, Lcom/eltechs/axs/Keyboard$XKey;-><init>(Lcom/eltechs/axs/Keyboard;Lcom/eltechs/axs/KeyCodesX;I)V

    const/16 v2, 0x2713

    aput-object v1, v0, v2

    .line 1030
    iget-object v0, p0, Lcom/eltechs/axs/Keyboard;->UnicodeToXKeyMap:[Lcom/eltechs/axs/Keyboard$XKey;

    new-instance v1, Lcom/eltechs/axs/Keyboard$XKey;

    sget-object v2, Lcom/eltechs/axs/KeyCodesX;->KEY_Y:Lcom/eltechs/axs/KeyCodesX;

    const/16 v3, 0xaf4

    invoke-direct {v1, p0, v2, v3}, Lcom/eltechs/axs/Keyboard$XKey;-><init>(Lcom/eltechs/axs/Keyboard;Lcom/eltechs/axs/KeyCodesX;I)V

    const/16 v2, 0x2717

    aput-object v1, v0, v2

    .line 1031
    iget-object v0, p0, Lcom/eltechs/axs/Keyboard;->UnicodeToXKeyMap:[Lcom/eltechs/axs/Keyboard$XKey;

    new-instance v1, Lcom/eltechs/axs/Keyboard$XKey;

    sget-object v2, Lcom/eltechs/axs/KeyCodesX;->KEY_Z:Lcom/eltechs/axs/KeyCodesX;

    const/16 v3, 0xad9

    invoke-direct {v1, p0, v2, v3}, Lcom/eltechs/axs/Keyboard$XKey;-><init>(Lcom/eltechs/axs/Keyboard;Lcom/eltechs/axs/KeyCodesX;I)V

    const/16 v2, 0x271d

    aput-object v1, v0, v2

    .line 1032
    iget-object v0, p0, Lcom/eltechs/axs/Keyboard;->UnicodeToXKeyMap:[Lcom/eltechs/axs/Keyboard$XKey;

    new-instance v1, Lcom/eltechs/axs/Keyboard$XKey;

    sget-object v2, Lcom/eltechs/axs/KeyCodesX;->KEY_A:Lcom/eltechs/axs/KeyCodesX;

    const/16 v3, 0xaf0

    invoke-direct {v1, p0, v2, v3}, Lcom/eltechs/axs/Keyboard$XKey;-><init>(Lcom/eltechs/axs/Keyboard;Lcom/eltechs/axs/KeyCodesX;I)V

    const/16 v2, 0x2720

    aput-object v1, v0, v2

    .line 1033
    iget-object v0, p0, Lcom/eltechs/axs/Keyboard;->UnicodeToXKeyMap:[Lcom/eltechs/axs/Keyboard$XKey;

    new-instance v1, Lcom/eltechs/axs/Keyboard$XKey;

    sget-object v2, Lcom/eltechs/axs/KeyCodesX;->KEY_B:Lcom/eltechs/axs/KeyCodesX;

    const/16 v3, 0x4a4

    invoke-direct {v1, p0, v2, v3}, Lcom/eltechs/axs/Keyboard$XKey;-><init>(Lcom/eltechs/axs/Keyboard;Lcom/eltechs/axs/KeyCodesX;I)V

    const/16 v2, 0x3001

    aput-object v1, v0, v2

    .line 1034
    iget-object v0, p0, Lcom/eltechs/axs/Keyboard;->UnicodeToXKeyMap:[Lcom/eltechs/axs/Keyboard$XKey;

    new-instance v1, Lcom/eltechs/axs/Keyboard$XKey;

    sget-object v2, Lcom/eltechs/axs/KeyCodesX;->KEY_C:Lcom/eltechs/axs/KeyCodesX;

    const/16 v3, 0x4a1

    invoke-direct {v1, p0, v2, v3}, Lcom/eltechs/axs/Keyboard$XKey;-><init>(Lcom/eltechs/axs/Keyboard;Lcom/eltechs/axs/KeyCodesX;I)V

    const/16 v2, 0x3002

    aput-object v1, v0, v2

    .line 1035
    iget-object v0, p0, Lcom/eltechs/axs/Keyboard;->UnicodeToXKeyMap:[Lcom/eltechs/axs/Keyboard$XKey;

    new-instance v1, Lcom/eltechs/axs/Keyboard$XKey;

    sget-object v2, Lcom/eltechs/axs/KeyCodesX;->KEY_D:Lcom/eltechs/axs/KeyCodesX;

    const/16 v3, 0x4a2

    invoke-direct {v1, p0, v2, v3}, Lcom/eltechs/axs/Keyboard$XKey;-><init>(Lcom/eltechs/axs/Keyboard;Lcom/eltechs/axs/KeyCodesX;I)V

    const/16 v2, 0x300c

    aput-object v1, v0, v2

    .line 1036
    iget-object v0, p0, Lcom/eltechs/axs/Keyboard;->UnicodeToXKeyMap:[Lcom/eltechs/axs/Keyboard$XKey;

    new-instance v1, Lcom/eltechs/axs/Keyboard$XKey;

    sget-object v2, Lcom/eltechs/axs/KeyCodesX;->KEY_E:Lcom/eltechs/axs/KeyCodesX;

    const/16 v3, 0x4a3

    invoke-direct {v1, p0, v2, v3}, Lcom/eltechs/axs/Keyboard$XKey;-><init>(Lcom/eltechs/axs/Keyboard;Lcom/eltechs/axs/KeyCodesX;I)V

    const/16 v2, 0x300d

    aput-object v1, v0, v2

    .line 1037
    iget-object v0, p0, Lcom/eltechs/axs/Keyboard;->UnicodeToXKeyMap:[Lcom/eltechs/axs/Keyboard$XKey;

    new-instance v1, Lcom/eltechs/axs/Keyboard$XKey;

    sget-object v2, Lcom/eltechs/axs/KeyCodesX;->KEY_F:Lcom/eltechs/axs/KeyCodesX;

    const/16 v3, 0x4de

    invoke-direct {v1, p0, v2, v3}, Lcom/eltechs/axs/Keyboard$XKey;-><init>(Lcom/eltechs/axs/Keyboard;Lcom/eltechs/axs/KeyCodesX;I)V

    const/16 v2, 0x309b

    aput-object v1, v0, v2

    .line 1038
    iget-object v0, p0, Lcom/eltechs/axs/Keyboard;->UnicodeToXKeyMap:[Lcom/eltechs/axs/Keyboard$XKey;

    new-instance v1, Lcom/eltechs/axs/Keyboard$XKey;

    sget-object v2, Lcom/eltechs/axs/KeyCodesX;->KEY_G:Lcom/eltechs/axs/KeyCodesX;

    const/16 v3, 0x4df

    invoke-direct {v1, p0, v2, v3}, Lcom/eltechs/axs/Keyboard$XKey;-><init>(Lcom/eltechs/axs/Keyboard;Lcom/eltechs/axs/KeyCodesX;I)V

    const/16 v2, 0x309c

    aput-object v1, v0, v2

    .line 1039
    iget-object v0, p0, Lcom/eltechs/axs/Keyboard;->UnicodeToXKeyMap:[Lcom/eltechs/axs/Keyboard$XKey;

    new-instance v1, Lcom/eltechs/axs/Keyboard$XKey;

    sget-object v2, Lcom/eltechs/axs/KeyCodesX;->KEY_H:Lcom/eltechs/axs/KeyCodesX;

    const/16 v3, 0x4a7

    invoke-direct {v1, p0, v2, v3}, Lcom/eltechs/axs/Keyboard$XKey;-><init>(Lcom/eltechs/axs/Keyboard;Lcom/eltechs/axs/KeyCodesX;I)V

    const/16 v2, 0x30a1

    aput-object v1, v0, v2

    .line 1040
    iget-object v0, p0, Lcom/eltechs/axs/Keyboard;->UnicodeToXKeyMap:[Lcom/eltechs/axs/Keyboard$XKey;

    new-instance v1, Lcom/eltechs/axs/Keyboard$XKey;

    sget-object v2, Lcom/eltechs/axs/KeyCodesX;->KEY_I:Lcom/eltechs/axs/KeyCodesX;

    const/16 v3, 0x4b1

    invoke-direct {v1, p0, v2, v3}, Lcom/eltechs/axs/Keyboard$XKey;-><init>(Lcom/eltechs/axs/Keyboard;Lcom/eltechs/axs/KeyCodesX;I)V

    const/16 v2, 0x30a2

    aput-object v1, v0, v2

    .line 1041
    iget-object v0, p0, Lcom/eltechs/axs/Keyboard;->UnicodeToXKeyMap:[Lcom/eltechs/axs/Keyboard$XKey;

    new-instance v1, Lcom/eltechs/axs/Keyboard$XKey;

    sget-object v2, Lcom/eltechs/axs/KeyCodesX;->KEY_J:Lcom/eltechs/axs/KeyCodesX;

    const/16 v3, 0x4a8

    invoke-direct {v1, p0, v2, v3}, Lcom/eltechs/axs/Keyboard$XKey;-><init>(Lcom/eltechs/axs/Keyboard;Lcom/eltechs/axs/KeyCodesX;I)V

    const/16 v2, 0x30a3

    aput-object v1, v0, v2

    .line 1042
    iget-object v0, p0, Lcom/eltechs/axs/Keyboard;->UnicodeToXKeyMap:[Lcom/eltechs/axs/Keyboard$XKey;

    new-instance v1, Lcom/eltechs/axs/Keyboard$XKey;

    sget-object v2, Lcom/eltechs/axs/KeyCodesX;->KEY_K:Lcom/eltechs/axs/KeyCodesX;

    const/16 v3, 0x4b2

    invoke-direct {v1, p0, v2, v3}, Lcom/eltechs/axs/Keyboard$XKey;-><init>(Lcom/eltechs/axs/Keyboard;Lcom/eltechs/axs/KeyCodesX;I)V

    const/16 v2, 0x30a4

    aput-object v1, v0, v2

    .line 1043
    iget-object v0, p0, Lcom/eltechs/axs/Keyboard;->UnicodeToXKeyMap:[Lcom/eltechs/axs/Keyboard$XKey;

    new-instance v1, Lcom/eltechs/axs/Keyboard$XKey;

    sget-object v2, Lcom/eltechs/axs/KeyCodesX;->KEY_L:Lcom/eltechs/axs/KeyCodesX;

    const/16 v3, 0x4a9

    invoke-direct {v1, p0, v2, v3}, Lcom/eltechs/axs/Keyboard$XKey;-><init>(Lcom/eltechs/axs/Keyboard;Lcom/eltechs/axs/KeyCodesX;I)V

    const/16 v2, 0x30a5

    aput-object v1, v0, v2

    .line 1044
    iget-object v0, p0, Lcom/eltechs/axs/Keyboard;->UnicodeToXKeyMap:[Lcom/eltechs/axs/Keyboard$XKey;

    new-instance v1, Lcom/eltechs/axs/Keyboard$XKey;

    sget-object v2, Lcom/eltechs/axs/KeyCodesX;->KEY_M:Lcom/eltechs/axs/KeyCodesX;

    const/16 v3, 0x4b3

    invoke-direct {v1, p0, v2, v3}, Lcom/eltechs/axs/Keyboard$XKey;-><init>(Lcom/eltechs/axs/Keyboard;Lcom/eltechs/axs/KeyCodesX;I)V

    const/16 v2, 0x30a6

    aput-object v1, v0, v2

    .line 1045
    iget-object v0, p0, Lcom/eltechs/axs/Keyboard;->UnicodeToXKeyMap:[Lcom/eltechs/axs/Keyboard$XKey;

    new-instance v1, Lcom/eltechs/axs/Keyboard$XKey;

    sget-object v2, Lcom/eltechs/axs/KeyCodesX;->KEY_N:Lcom/eltechs/axs/KeyCodesX;

    const/16 v3, 0x4aa

    invoke-direct {v1, p0, v2, v3}, Lcom/eltechs/axs/Keyboard$XKey;-><init>(Lcom/eltechs/axs/Keyboard;Lcom/eltechs/axs/KeyCodesX;I)V

    const/16 v2, 0x30a7

    aput-object v1, v0, v2

    .line 1046
    iget-object v0, p0, Lcom/eltechs/axs/Keyboard;->UnicodeToXKeyMap:[Lcom/eltechs/axs/Keyboard$XKey;

    new-instance v1, Lcom/eltechs/axs/Keyboard$XKey;

    sget-object v2, Lcom/eltechs/axs/KeyCodesX;->KEY_O:Lcom/eltechs/axs/KeyCodesX;

    const/16 v3, 0x4b4

    invoke-direct {v1, p0, v2, v3}, Lcom/eltechs/axs/Keyboard$XKey;-><init>(Lcom/eltechs/axs/Keyboard;Lcom/eltechs/axs/KeyCodesX;I)V

    const/16 v2, 0x30a8

    aput-object v1, v0, v2

    .line 1047
    iget-object v0, p0, Lcom/eltechs/axs/Keyboard;->UnicodeToXKeyMap:[Lcom/eltechs/axs/Keyboard$XKey;

    new-instance v1, Lcom/eltechs/axs/Keyboard$XKey;

    sget-object v2, Lcom/eltechs/axs/KeyCodesX;->KEY_P:Lcom/eltechs/axs/KeyCodesX;

    const/16 v3, 0x4ab

    invoke-direct {v1, p0, v2, v3}, Lcom/eltechs/axs/Keyboard$XKey;-><init>(Lcom/eltechs/axs/Keyboard;Lcom/eltechs/axs/KeyCodesX;I)V

    const/16 v2, 0x30a9

    aput-object v1, v0, v2

    .line 1048
    iget-object v0, p0, Lcom/eltechs/axs/Keyboard;->UnicodeToXKeyMap:[Lcom/eltechs/axs/Keyboard$XKey;

    new-instance v1, Lcom/eltechs/axs/Keyboard$XKey;

    sget-object v2, Lcom/eltechs/axs/KeyCodesX;->KEY_Q:Lcom/eltechs/axs/KeyCodesX;

    const/16 v3, 0x4b5

    invoke-direct {v1, p0, v2, v3}, Lcom/eltechs/axs/Keyboard$XKey;-><init>(Lcom/eltechs/axs/Keyboard;Lcom/eltechs/axs/KeyCodesX;I)V

    const/16 v2, 0x30aa

    aput-object v1, v0, v2

    .line 1049
    iget-object v0, p0, Lcom/eltechs/axs/Keyboard;->UnicodeToXKeyMap:[Lcom/eltechs/axs/Keyboard$XKey;

    new-instance v1, Lcom/eltechs/axs/Keyboard$XKey;

    sget-object v2, Lcom/eltechs/axs/KeyCodesX;->KEY_R:Lcom/eltechs/axs/KeyCodesX;

    const/16 v3, 0x4b6

    invoke-direct {v1, p0, v2, v3}, Lcom/eltechs/axs/Keyboard$XKey;-><init>(Lcom/eltechs/axs/Keyboard;Lcom/eltechs/axs/KeyCodesX;I)V

    const/16 v2, 0x30ab

    aput-object v1, v0, v2

    .line 1050
    iget-object v0, p0, Lcom/eltechs/axs/Keyboard;->UnicodeToXKeyMap:[Lcom/eltechs/axs/Keyboard$XKey;

    new-instance v1, Lcom/eltechs/axs/Keyboard$XKey;

    sget-object v2, Lcom/eltechs/axs/KeyCodesX;->KEY_S:Lcom/eltechs/axs/KeyCodesX;

    const/16 v3, 0x4b7

    invoke-direct {v1, p0, v2, v3}, Lcom/eltechs/axs/Keyboard$XKey;-><init>(Lcom/eltechs/axs/Keyboard;Lcom/eltechs/axs/KeyCodesX;I)V

    const/16 v2, 0x30ad

    aput-object v1, v0, v2

    .line 1051
    iget-object v0, p0, Lcom/eltechs/axs/Keyboard;->UnicodeToXKeyMap:[Lcom/eltechs/axs/Keyboard$XKey;

    new-instance v1, Lcom/eltechs/axs/Keyboard$XKey;

    sget-object v2, Lcom/eltechs/axs/KeyCodesX;->KEY_T:Lcom/eltechs/axs/KeyCodesX;

    const/16 v3, 0x4b8

    invoke-direct {v1, p0, v2, v3}, Lcom/eltechs/axs/Keyboard$XKey;-><init>(Lcom/eltechs/axs/Keyboard;Lcom/eltechs/axs/KeyCodesX;I)V

    const/16 v2, 0x30af

    aput-object v1, v0, v2

    .line 1052
    iget-object v0, p0, Lcom/eltechs/axs/Keyboard;->UnicodeToXKeyMap:[Lcom/eltechs/axs/Keyboard$XKey;

    new-instance v1, Lcom/eltechs/axs/Keyboard$XKey;

    sget-object v2, Lcom/eltechs/axs/KeyCodesX;->KEY_U:Lcom/eltechs/axs/KeyCodesX;

    const/16 v3, 0x4b9

    invoke-direct {v1, p0, v2, v3}, Lcom/eltechs/axs/Keyboard$XKey;-><init>(Lcom/eltechs/axs/Keyboard;Lcom/eltechs/axs/KeyCodesX;I)V

    const/16 v2, 0x30b1

    aput-object v1, v0, v2

    .line 1053
    iget-object v0, p0, Lcom/eltechs/axs/Keyboard;->UnicodeToXKeyMap:[Lcom/eltechs/axs/Keyboard$XKey;

    new-instance v1, Lcom/eltechs/axs/Keyboard$XKey;

    sget-object v2, Lcom/eltechs/axs/KeyCodesX;->KEY_V:Lcom/eltechs/axs/KeyCodesX;

    const/16 v3, 0x4ba

    invoke-direct {v1, p0, v2, v3}, Lcom/eltechs/axs/Keyboard$XKey;-><init>(Lcom/eltechs/axs/Keyboard;Lcom/eltechs/axs/KeyCodesX;I)V

    const/16 v2, 0x30b3

    aput-object v1, v0, v2

    .line 1054
    iget-object v0, p0, Lcom/eltechs/axs/Keyboard;->UnicodeToXKeyMap:[Lcom/eltechs/axs/Keyboard$XKey;

    new-instance v1, Lcom/eltechs/axs/Keyboard$XKey;

    sget-object v2, Lcom/eltechs/axs/KeyCodesX;->KEY_W:Lcom/eltechs/axs/KeyCodesX;

    const/16 v3, 0x4bb

    invoke-direct {v1, p0, v2, v3}, Lcom/eltechs/axs/Keyboard$XKey;-><init>(Lcom/eltechs/axs/Keyboard;Lcom/eltechs/axs/KeyCodesX;I)V

    const/16 v2, 0x30b5

    aput-object v1, v0, v2

    .line 1055
    iget-object v0, p0, Lcom/eltechs/axs/Keyboard;->UnicodeToXKeyMap:[Lcom/eltechs/axs/Keyboard$XKey;

    new-instance v1, Lcom/eltechs/axs/Keyboard$XKey;

    sget-object v2, Lcom/eltechs/axs/KeyCodesX;->KEY_X:Lcom/eltechs/axs/KeyCodesX;

    const/16 v3, 0x4bc

    invoke-direct {v1, p0, v2, v3}, Lcom/eltechs/axs/Keyboard$XKey;-><init>(Lcom/eltechs/axs/Keyboard;Lcom/eltechs/axs/KeyCodesX;I)V

    const/16 v2, 0x30b7

    aput-object v1, v0, v2

    .line 1056
    iget-object v0, p0, Lcom/eltechs/axs/Keyboard;->UnicodeToXKeyMap:[Lcom/eltechs/axs/Keyboard$XKey;

    new-instance v1, Lcom/eltechs/axs/Keyboard$XKey;

    sget-object v2, Lcom/eltechs/axs/KeyCodesX;->KEY_Y:Lcom/eltechs/axs/KeyCodesX;

    const/16 v3, 0x4bd

    invoke-direct {v1, p0, v2, v3}, Lcom/eltechs/axs/Keyboard$XKey;-><init>(Lcom/eltechs/axs/Keyboard;Lcom/eltechs/axs/KeyCodesX;I)V

    const/16 v2, 0x30b9

    aput-object v1, v0, v2

    .line 1057
    iget-object v0, p0, Lcom/eltechs/axs/Keyboard;->UnicodeToXKeyMap:[Lcom/eltechs/axs/Keyboard$XKey;

    new-instance v1, Lcom/eltechs/axs/Keyboard$XKey;

    sget-object v2, Lcom/eltechs/axs/KeyCodesX;->KEY_Z:Lcom/eltechs/axs/KeyCodesX;

    const/16 v3, 0x4be

    invoke-direct {v1, p0, v2, v3}, Lcom/eltechs/axs/Keyboard$XKey;-><init>(Lcom/eltechs/axs/Keyboard;Lcom/eltechs/axs/KeyCodesX;I)V

    const/16 v2, 0x30bb

    aput-object v1, v0, v2

    .line 1058
    iget-object v0, p0, Lcom/eltechs/axs/Keyboard;->UnicodeToXKeyMap:[Lcom/eltechs/axs/Keyboard$XKey;

    new-instance v1, Lcom/eltechs/axs/Keyboard$XKey;

    sget-object v2, Lcom/eltechs/axs/KeyCodesX;->KEY_A:Lcom/eltechs/axs/KeyCodesX;

    const/16 v3, 0x4bf

    invoke-direct {v1, p0, v2, v3}, Lcom/eltechs/axs/Keyboard$XKey;-><init>(Lcom/eltechs/axs/Keyboard;Lcom/eltechs/axs/KeyCodesX;I)V

    const/16 v2, 0x30bd

    aput-object v1, v0, v2

    .line 1059
    iget-object v0, p0, Lcom/eltechs/axs/Keyboard;->UnicodeToXKeyMap:[Lcom/eltechs/axs/Keyboard$XKey;

    new-instance v1, Lcom/eltechs/axs/Keyboard$XKey;

    sget-object v2, Lcom/eltechs/axs/KeyCodesX;->KEY_B:Lcom/eltechs/axs/KeyCodesX;

    const/16 v3, 0x4c0

    invoke-direct {v1, p0, v2, v3}, Lcom/eltechs/axs/Keyboard$XKey;-><init>(Lcom/eltechs/axs/Keyboard;Lcom/eltechs/axs/KeyCodesX;I)V

    const/16 v2, 0x30bf

    aput-object v1, v0, v2

    .line 1060
    iget-object v0, p0, Lcom/eltechs/axs/Keyboard;->UnicodeToXKeyMap:[Lcom/eltechs/axs/Keyboard$XKey;

    new-instance v1, Lcom/eltechs/axs/Keyboard$XKey;

    sget-object v2, Lcom/eltechs/axs/KeyCodesX;->KEY_C:Lcom/eltechs/axs/KeyCodesX;

    const/16 v3, 0x4c1

    invoke-direct {v1, p0, v2, v3}, Lcom/eltechs/axs/Keyboard$XKey;-><init>(Lcom/eltechs/axs/Keyboard;Lcom/eltechs/axs/KeyCodesX;I)V

    const/16 v2, 0x30c1

    aput-object v1, v0, v2

    .line 1061
    iget-object v0, p0, Lcom/eltechs/axs/Keyboard;->UnicodeToXKeyMap:[Lcom/eltechs/axs/Keyboard$XKey;

    new-instance v1, Lcom/eltechs/axs/Keyboard$XKey;

    sget-object v2, Lcom/eltechs/axs/KeyCodesX;->KEY_D:Lcom/eltechs/axs/KeyCodesX;

    const/16 v3, 0x4af

    invoke-direct {v1, p0, v2, v3}, Lcom/eltechs/axs/Keyboard$XKey;-><init>(Lcom/eltechs/axs/Keyboard;Lcom/eltechs/axs/KeyCodesX;I)V

    const/16 v2, 0x30c3

    aput-object v1, v0, v2

    .line 1062
    iget-object v0, p0, Lcom/eltechs/axs/Keyboard;->UnicodeToXKeyMap:[Lcom/eltechs/axs/Keyboard$XKey;

    new-instance v1, Lcom/eltechs/axs/Keyboard$XKey;

    sget-object v2, Lcom/eltechs/axs/KeyCodesX;->KEY_E:Lcom/eltechs/axs/KeyCodesX;

    const/16 v3, 0x4c2

    invoke-direct {v1, p0, v2, v3}, Lcom/eltechs/axs/Keyboard$XKey;-><init>(Lcom/eltechs/axs/Keyboard;Lcom/eltechs/axs/KeyCodesX;I)V

    const/16 v2, 0x30c4

    aput-object v1, v0, v2

    .line 1063
    iget-object v0, p0, Lcom/eltechs/axs/Keyboard;->UnicodeToXKeyMap:[Lcom/eltechs/axs/Keyboard$XKey;

    new-instance v1, Lcom/eltechs/axs/Keyboard$XKey;

    sget-object v2, Lcom/eltechs/axs/KeyCodesX;->KEY_F:Lcom/eltechs/axs/KeyCodesX;

    const/16 v3, 0x4c3

    invoke-direct {v1, p0, v2, v3}, Lcom/eltechs/axs/Keyboard$XKey;-><init>(Lcom/eltechs/axs/Keyboard;Lcom/eltechs/axs/KeyCodesX;I)V

    const/16 v2, 0x30c6

    aput-object v1, v0, v2

    .line 1064
    iget-object v0, p0, Lcom/eltechs/axs/Keyboard;->UnicodeToXKeyMap:[Lcom/eltechs/axs/Keyboard$XKey;

    new-instance v1, Lcom/eltechs/axs/Keyboard$XKey;

    sget-object v2, Lcom/eltechs/axs/KeyCodesX;->KEY_G:Lcom/eltechs/axs/KeyCodesX;

    const/16 v3, 0x4c4

    invoke-direct {v1, p0, v2, v3}, Lcom/eltechs/axs/Keyboard$XKey;-><init>(Lcom/eltechs/axs/Keyboard;Lcom/eltechs/axs/KeyCodesX;I)V

    const/16 v2, 0x30c8

    aput-object v1, v0, v2

    .line 1065
    iget-object v0, p0, Lcom/eltechs/axs/Keyboard;->UnicodeToXKeyMap:[Lcom/eltechs/axs/Keyboard$XKey;

    new-instance v1, Lcom/eltechs/axs/Keyboard$XKey;

    sget-object v2, Lcom/eltechs/axs/KeyCodesX;->KEY_H:Lcom/eltechs/axs/KeyCodesX;

    const/16 v3, 0x4c5

    invoke-direct {v1, p0, v2, v3}, Lcom/eltechs/axs/Keyboard$XKey;-><init>(Lcom/eltechs/axs/Keyboard;Lcom/eltechs/axs/KeyCodesX;I)V

    const/16 v2, 0x30ca

    aput-object v1, v0, v2

    .line 1066
    iget-object v0, p0, Lcom/eltechs/axs/Keyboard;->UnicodeToXKeyMap:[Lcom/eltechs/axs/Keyboard$XKey;

    new-instance v1, Lcom/eltechs/axs/Keyboard$XKey;

    sget-object v2, Lcom/eltechs/axs/KeyCodesX;->KEY_I:Lcom/eltechs/axs/KeyCodesX;

    const/16 v3, 0x4c6

    invoke-direct {v1, p0, v2, v3}, Lcom/eltechs/axs/Keyboard$XKey;-><init>(Lcom/eltechs/axs/Keyboard;Lcom/eltechs/axs/KeyCodesX;I)V

    const/16 v2, 0x30cb

    aput-object v1, v0, v2

    .line 1067
    iget-object v0, p0, Lcom/eltechs/axs/Keyboard;->UnicodeToXKeyMap:[Lcom/eltechs/axs/Keyboard$XKey;

    new-instance v1, Lcom/eltechs/axs/Keyboard$XKey;

    sget-object v2, Lcom/eltechs/axs/KeyCodesX;->KEY_J:Lcom/eltechs/axs/KeyCodesX;

    const/16 v3, 0x4c7

    invoke-direct {v1, p0, v2, v3}, Lcom/eltechs/axs/Keyboard$XKey;-><init>(Lcom/eltechs/axs/Keyboard;Lcom/eltechs/axs/KeyCodesX;I)V

    const/16 v2, 0x30cc

    aput-object v1, v0, v2

    .line 1068
    iget-object v0, p0, Lcom/eltechs/axs/Keyboard;->UnicodeToXKeyMap:[Lcom/eltechs/axs/Keyboard$XKey;

    new-instance v1, Lcom/eltechs/axs/Keyboard$XKey;

    sget-object v2, Lcom/eltechs/axs/KeyCodesX;->KEY_K:Lcom/eltechs/axs/KeyCodesX;

    const/16 v3, 0x4c8

    invoke-direct {v1, p0, v2, v3}, Lcom/eltechs/axs/Keyboard$XKey;-><init>(Lcom/eltechs/axs/Keyboard;Lcom/eltechs/axs/KeyCodesX;I)V

    const/16 v2, 0x30cd

    aput-object v1, v0, v2

    .line 1069
    iget-object v0, p0, Lcom/eltechs/axs/Keyboard;->UnicodeToXKeyMap:[Lcom/eltechs/axs/Keyboard$XKey;

    new-instance v1, Lcom/eltechs/axs/Keyboard$XKey;

    sget-object v2, Lcom/eltechs/axs/KeyCodesX;->KEY_L:Lcom/eltechs/axs/KeyCodesX;

    const/16 v3, 0x4c9

    invoke-direct {v1, p0, v2, v3}, Lcom/eltechs/axs/Keyboard$XKey;-><init>(Lcom/eltechs/axs/Keyboard;Lcom/eltechs/axs/KeyCodesX;I)V

    const/16 v2, 0x30ce

    aput-object v1, v0, v2

    .line 1070
    iget-object v0, p0, Lcom/eltechs/axs/Keyboard;->UnicodeToXKeyMap:[Lcom/eltechs/axs/Keyboard$XKey;

    new-instance v1, Lcom/eltechs/axs/Keyboard$XKey;

    sget-object v2, Lcom/eltechs/axs/KeyCodesX;->KEY_M:Lcom/eltechs/axs/KeyCodesX;

    const/16 v3, 0x4ca

    invoke-direct {v1, p0, v2, v3}, Lcom/eltechs/axs/Keyboard$XKey;-><init>(Lcom/eltechs/axs/Keyboard;Lcom/eltechs/axs/KeyCodesX;I)V

    const/16 v2, 0x30cf

    aput-object v1, v0, v2

    .line 1071
    iget-object v0, p0, Lcom/eltechs/axs/Keyboard;->UnicodeToXKeyMap:[Lcom/eltechs/axs/Keyboard$XKey;

    new-instance v1, Lcom/eltechs/axs/Keyboard$XKey;

    sget-object v2, Lcom/eltechs/axs/KeyCodesX;->KEY_N:Lcom/eltechs/axs/KeyCodesX;

    const/16 v3, 0x4cb

    invoke-direct {v1, p0, v2, v3}, Lcom/eltechs/axs/Keyboard$XKey;-><init>(Lcom/eltechs/axs/Keyboard;Lcom/eltechs/axs/KeyCodesX;I)V

    const/16 v2, 0x30d2

    aput-object v1, v0, v2

    .line 1072
    iget-object v0, p0, Lcom/eltechs/axs/Keyboard;->UnicodeToXKeyMap:[Lcom/eltechs/axs/Keyboard$XKey;

    new-instance v1, Lcom/eltechs/axs/Keyboard$XKey;

    sget-object v2, Lcom/eltechs/axs/KeyCodesX;->KEY_O:Lcom/eltechs/axs/KeyCodesX;

    const/16 v3, 0x4cc

    invoke-direct {v1, p0, v2, v3}, Lcom/eltechs/axs/Keyboard$XKey;-><init>(Lcom/eltechs/axs/Keyboard;Lcom/eltechs/axs/KeyCodesX;I)V

    const/16 v2, 0x30d5

    aput-object v1, v0, v2

    .line 1073
    iget-object v0, p0, Lcom/eltechs/axs/Keyboard;->UnicodeToXKeyMap:[Lcom/eltechs/axs/Keyboard$XKey;

    new-instance v1, Lcom/eltechs/axs/Keyboard$XKey;

    sget-object v2, Lcom/eltechs/axs/KeyCodesX;->KEY_P:Lcom/eltechs/axs/KeyCodesX;

    const/16 v3, 0x4cd

    invoke-direct {v1, p0, v2, v3}, Lcom/eltechs/axs/Keyboard$XKey;-><init>(Lcom/eltechs/axs/Keyboard;Lcom/eltechs/axs/KeyCodesX;I)V

    const/16 v2, 0x30d8

    aput-object v1, v0, v2

    .line 1074
    iget-object v0, p0, Lcom/eltechs/axs/Keyboard;->UnicodeToXKeyMap:[Lcom/eltechs/axs/Keyboard$XKey;

    new-instance v1, Lcom/eltechs/axs/Keyboard$XKey;

    sget-object v2, Lcom/eltechs/axs/KeyCodesX;->KEY_Q:Lcom/eltechs/axs/KeyCodesX;

    const/16 v3, 0x4ce

    invoke-direct {v1, p0, v2, v3}, Lcom/eltechs/axs/Keyboard$XKey;-><init>(Lcom/eltechs/axs/Keyboard;Lcom/eltechs/axs/KeyCodesX;I)V

    const/16 v2, 0x30db

    aput-object v1, v0, v2

    .line 1075
    iget-object v0, p0, Lcom/eltechs/axs/Keyboard;->UnicodeToXKeyMap:[Lcom/eltechs/axs/Keyboard$XKey;

    new-instance v1, Lcom/eltechs/axs/Keyboard$XKey;

    sget-object v2, Lcom/eltechs/axs/KeyCodesX;->KEY_R:Lcom/eltechs/axs/KeyCodesX;

    const/16 v3, 0x4cf

    invoke-direct {v1, p0, v2, v3}, Lcom/eltechs/axs/Keyboard$XKey;-><init>(Lcom/eltechs/axs/Keyboard;Lcom/eltechs/axs/KeyCodesX;I)V

    const/16 v2, 0x30de

    aput-object v1, v0, v2

    .line 1076
    iget-object v0, p0, Lcom/eltechs/axs/Keyboard;->UnicodeToXKeyMap:[Lcom/eltechs/axs/Keyboard$XKey;

    new-instance v1, Lcom/eltechs/axs/Keyboard$XKey;

    sget-object v2, Lcom/eltechs/axs/KeyCodesX;->KEY_S:Lcom/eltechs/axs/KeyCodesX;

    const/16 v3, 0x4d0

    invoke-direct {v1, p0, v2, v3}, Lcom/eltechs/axs/Keyboard$XKey;-><init>(Lcom/eltechs/axs/Keyboard;Lcom/eltechs/axs/KeyCodesX;I)V

    const/16 v2, 0x30df

    aput-object v1, v0, v2

    .line 1077
    iget-object v0, p0, Lcom/eltechs/axs/Keyboard;->UnicodeToXKeyMap:[Lcom/eltechs/axs/Keyboard$XKey;

    new-instance v1, Lcom/eltechs/axs/Keyboard$XKey;

    sget-object v2, Lcom/eltechs/axs/KeyCodesX;->KEY_T:Lcom/eltechs/axs/KeyCodesX;

    const/16 v3, 0x4d1

    invoke-direct {v1, p0, v2, v3}, Lcom/eltechs/axs/Keyboard$XKey;-><init>(Lcom/eltechs/axs/Keyboard;Lcom/eltechs/axs/KeyCodesX;I)V

    const/16 v2, 0x30e0

    aput-object v1, v0, v2

    .line 1078
    iget-object v0, p0, Lcom/eltechs/axs/Keyboard;->UnicodeToXKeyMap:[Lcom/eltechs/axs/Keyboard$XKey;

    new-instance v1, Lcom/eltechs/axs/Keyboard$XKey;

    sget-object v2, Lcom/eltechs/axs/KeyCodesX;->KEY_U:Lcom/eltechs/axs/KeyCodesX;

    const/16 v3, 0x4d2

    invoke-direct {v1, p0, v2, v3}, Lcom/eltechs/axs/Keyboard$XKey;-><init>(Lcom/eltechs/axs/Keyboard;Lcom/eltechs/axs/KeyCodesX;I)V

    const/16 v2, 0x30e1

    aput-object v1, v0, v2

    .line 1079
    iget-object v0, p0, Lcom/eltechs/axs/Keyboard;->UnicodeToXKeyMap:[Lcom/eltechs/axs/Keyboard$XKey;

    new-instance v1, Lcom/eltechs/axs/Keyboard$XKey;

    sget-object v2, Lcom/eltechs/axs/KeyCodesX;->KEY_V:Lcom/eltechs/axs/KeyCodesX;

    const/16 v3, 0x4d3

    invoke-direct {v1, p0, v2, v3}, Lcom/eltechs/axs/Keyboard$XKey;-><init>(Lcom/eltechs/axs/Keyboard;Lcom/eltechs/axs/KeyCodesX;I)V

    const/16 v2, 0x30e2

    aput-object v1, v0, v2

    .line 1080
    iget-object v0, p0, Lcom/eltechs/axs/Keyboard;->UnicodeToXKeyMap:[Lcom/eltechs/axs/Keyboard$XKey;

    new-instance v1, Lcom/eltechs/axs/Keyboard$XKey;

    sget-object v2, Lcom/eltechs/axs/KeyCodesX;->KEY_W:Lcom/eltechs/axs/KeyCodesX;

    const/16 v3, 0x4ac

    invoke-direct {v1, p0, v2, v3}, Lcom/eltechs/axs/Keyboard$XKey;-><init>(Lcom/eltechs/axs/Keyboard;Lcom/eltechs/axs/KeyCodesX;I)V

    const/16 v2, 0x30e3

    aput-object v1, v0, v2

    .line 1081
    iget-object v0, p0, Lcom/eltechs/axs/Keyboard;->UnicodeToXKeyMap:[Lcom/eltechs/axs/Keyboard$XKey;

    new-instance v1, Lcom/eltechs/axs/Keyboard$XKey;

    sget-object v2, Lcom/eltechs/axs/KeyCodesX;->KEY_X:Lcom/eltechs/axs/KeyCodesX;

    const/16 v3, 0x4d4

    invoke-direct {v1, p0, v2, v3}, Lcom/eltechs/axs/Keyboard$XKey;-><init>(Lcom/eltechs/axs/Keyboard;Lcom/eltechs/axs/KeyCodesX;I)V

    const/16 v2, 0x30e4

    aput-object v1, v0, v2

    .line 1082
    iget-object v0, p0, Lcom/eltechs/axs/Keyboard;->UnicodeToXKeyMap:[Lcom/eltechs/axs/Keyboard$XKey;

    new-instance v1, Lcom/eltechs/axs/Keyboard$XKey;

    sget-object v2, Lcom/eltechs/axs/KeyCodesX;->KEY_Y:Lcom/eltechs/axs/KeyCodesX;

    const/16 v3, 0x4ad

    invoke-direct {v1, p0, v2, v3}, Lcom/eltechs/axs/Keyboard$XKey;-><init>(Lcom/eltechs/axs/Keyboard;Lcom/eltechs/axs/KeyCodesX;I)V

    const/16 v2, 0x30e5

    aput-object v1, v0, v2

    .line 1083
    iget-object v0, p0, Lcom/eltechs/axs/Keyboard;->UnicodeToXKeyMap:[Lcom/eltechs/axs/Keyboard$XKey;

    new-instance v1, Lcom/eltechs/axs/Keyboard$XKey;

    sget-object v2, Lcom/eltechs/axs/KeyCodesX;->KEY_Z:Lcom/eltechs/axs/KeyCodesX;

    const/16 v3, 0x4d5

    invoke-direct {v1, p0, v2, v3}, Lcom/eltechs/axs/Keyboard$XKey;-><init>(Lcom/eltechs/axs/Keyboard;Lcom/eltechs/axs/KeyCodesX;I)V

    const/16 v2, 0x30e6

    aput-object v1, v0, v2

    .line 1084
    iget-object v0, p0, Lcom/eltechs/axs/Keyboard;->UnicodeToXKeyMap:[Lcom/eltechs/axs/Keyboard$XKey;

    new-instance v1, Lcom/eltechs/axs/Keyboard$XKey;

    sget-object v2, Lcom/eltechs/axs/KeyCodesX;->KEY_A:Lcom/eltechs/axs/KeyCodesX;

    const/16 v3, 0x4ae

    invoke-direct {v1, p0, v2, v3}, Lcom/eltechs/axs/Keyboard$XKey;-><init>(Lcom/eltechs/axs/Keyboard;Lcom/eltechs/axs/KeyCodesX;I)V

    const/16 v2, 0x30e7

    aput-object v1, v0, v2

    .line 1085
    iget-object v0, p0, Lcom/eltechs/axs/Keyboard;->UnicodeToXKeyMap:[Lcom/eltechs/axs/Keyboard$XKey;

    new-instance v1, Lcom/eltechs/axs/Keyboard$XKey;

    sget-object v2, Lcom/eltechs/axs/KeyCodesX;->KEY_B:Lcom/eltechs/axs/KeyCodesX;

    const/16 v3, 0x4d6

    invoke-direct {v1, p0, v2, v3}, Lcom/eltechs/axs/Keyboard$XKey;-><init>(Lcom/eltechs/axs/Keyboard;Lcom/eltechs/axs/KeyCodesX;I)V

    const/16 v2, 0x30e8

    aput-object v1, v0, v2

    .line 1086
    iget-object v0, p0, Lcom/eltechs/axs/Keyboard;->UnicodeToXKeyMap:[Lcom/eltechs/axs/Keyboard$XKey;

    new-instance v1, Lcom/eltechs/axs/Keyboard$XKey;

    sget-object v2, Lcom/eltechs/axs/KeyCodesX;->KEY_C:Lcom/eltechs/axs/KeyCodesX;

    const/16 v3, 0x4d7

    invoke-direct {v1, p0, v2, v3}, Lcom/eltechs/axs/Keyboard$XKey;-><init>(Lcom/eltechs/axs/Keyboard;Lcom/eltechs/axs/KeyCodesX;I)V

    const/16 v2, 0x30e9

    aput-object v1, v0, v2

    .line 1087
    iget-object v0, p0, Lcom/eltechs/axs/Keyboard;->UnicodeToXKeyMap:[Lcom/eltechs/axs/Keyboard$XKey;

    new-instance v1, Lcom/eltechs/axs/Keyboard$XKey;

    sget-object v2, Lcom/eltechs/axs/KeyCodesX;->KEY_D:Lcom/eltechs/axs/KeyCodesX;

    const/16 v3, 0x4d8

    invoke-direct {v1, p0, v2, v3}, Lcom/eltechs/axs/Keyboard$XKey;-><init>(Lcom/eltechs/axs/Keyboard;Lcom/eltechs/axs/KeyCodesX;I)V

    const/16 v2, 0x30ea

    aput-object v1, v0, v2

    .line 1088
    iget-object v0, p0, Lcom/eltechs/axs/Keyboard;->UnicodeToXKeyMap:[Lcom/eltechs/axs/Keyboard$XKey;

    new-instance v1, Lcom/eltechs/axs/Keyboard$XKey;

    sget-object v2, Lcom/eltechs/axs/KeyCodesX;->KEY_E:Lcom/eltechs/axs/KeyCodesX;

    const/16 v3, 0x4d9

    invoke-direct {v1, p0, v2, v3}, Lcom/eltechs/axs/Keyboard$XKey;-><init>(Lcom/eltechs/axs/Keyboard;Lcom/eltechs/axs/KeyCodesX;I)V

    const/16 v2, 0x30eb

    aput-object v1, v0, v2

    .line 1089
    iget-object v0, p0, Lcom/eltechs/axs/Keyboard;->UnicodeToXKeyMap:[Lcom/eltechs/axs/Keyboard$XKey;

    new-instance v1, Lcom/eltechs/axs/Keyboard$XKey;

    sget-object v2, Lcom/eltechs/axs/KeyCodesX;->KEY_F:Lcom/eltechs/axs/KeyCodesX;

    const/16 v3, 0x4da

    invoke-direct {v1, p0, v2, v3}, Lcom/eltechs/axs/Keyboard$XKey;-><init>(Lcom/eltechs/axs/Keyboard;Lcom/eltechs/axs/KeyCodesX;I)V

    const/16 v2, 0x30ec

    aput-object v1, v0, v2

    .line 1090
    iget-object v0, p0, Lcom/eltechs/axs/Keyboard;->UnicodeToXKeyMap:[Lcom/eltechs/axs/Keyboard$XKey;

    new-instance v1, Lcom/eltechs/axs/Keyboard$XKey;

    sget-object v2, Lcom/eltechs/axs/KeyCodesX;->KEY_G:Lcom/eltechs/axs/KeyCodesX;

    const/16 v3, 0x4db

    invoke-direct {v1, p0, v2, v3}, Lcom/eltechs/axs/Keyboard$XKey;-><init>(Lcom/eltechs/axs/Keyboard;Lcom/eltechs/axs/KeyCodesX;I)V

    const/16 v2, 0x30ed

    aput-object v1, v0, v2

    .line 1091
    iget-object v0, p0, Lcom/eltechs/axs/Keyboard;->UnicodeToXKeyMap:[Lcom/eltechs/axs/Keyboard$XKey;

    new-instance v1, Lcom/eltechs/axs/Keyboard$XKey;

    sget-object v2, Lcom/eltechs/axs/KeyCodesX;->KEY_H:Lcom/eltechs/axs/KeyCodesX;

    const/16 v3, 0x4dc

    invoke-direct {v1, p0, v2, v3}, Lcom/eltechs/axs/Keyboard$XKey;-><init>(Lcom/eltechs/axs/Keyboard;Lcom/eltechs/axs/KeyCodesX;I)V

    const/16 v2, 0x30ef

    aput-object v1, v0, v2

    .line 1092
    iget-object v0, p0, Lcom/eltechs/axs/Keyboard;->UnicodeToXKeyMap:[Lcom/eltechs/axs/Keyboard$XKey;

    new-instance v1, Lcom/eltechs/axs/Keyboard$XKey;

    sget-object v2, Lcom/eltechs/axs/KeyCodesX;->KEY_I:Lcom/eltechs/axs/KeyCodesX;

    const/16 v3, 0x4a6

    invoke-direct {v1, p0, v2, v3}, Lcom/eltechs/axs/Keyboard$XKey;-><init>(Lcom/eltechs/axs/Keyboard;Lcom/eltechs/axs/KeyCodesX;I)V

    const/16 v2, 0x30f2

    aput-object v1, v0, v2

    .line 1093
    iget-object v0, p0, Lcom/eltechs/axs/Keyboard;->UnicodeToXKeyMap:[Lcom/eltechs/axs/Keyboard$XKey;

    new-instance v1, Lcom/eltechs/axs/Keyboard$XKey;

    sget-object v2, Lcom/eltechs/axs/KeyCodesX;->KEY_J:Lcom/eltechs/axs/KeyCodesX;

    const/16 v3, 0x4dd

    invoke-direct {v1, p0, v2, v3}, Lcom/eltechs/axs/Keyboard$XKey;-><init>(Lcom/eltechs/axs/Keyboard;Lcom/eltechs/axs/KeyCodesX;I)V

    const/16 v2, 0x30f3

    aput-object v1, v0, v2

    .line 1094
    iget-object v0, p0, Lcom/eltechs/axs/Keyboard;->UnicodeToXKeyMap:[Lcom/eltechs/axs/Keyboard$XKey;

    new-instance v1, Lcom/eltechs/axs/Keyboard$XKey;

    sget-object v2, Lcom/eltechs/axs/KeyCodesX;->KEY_K:Lcom/eltechs/axs/KeyCodesX;

    const/16 v3, 0x4a5

    invoke-direct {v1, p0, v2, v3}, Lcom/eltechs/axs/Keyboard$XKey;-><init>(Lcom/eltechs/axs/Keyboard;Lcom/eltechs/axs/KeyCodesX;I)V

    const/16 v2, 0x30fb

    aput-object v1, v0, v2

    .line 1095
    iget-object v0, p0, Lcom/eltechs/axs/Keyboard;->UnicodeToXKeyMap:[Lcom/eltechs/axs/Keyboard$XKey;

    new-instance v1, Lcom/eltechs/axs/Keyboard$XKey;

    sget-object v2, Lcom/eltechs/axs/KeyCodesX;->KEY_L:Lcom/eltechs/axs/KeyCodesX;

    const/16 v3, 0x4b0

    invoke-direct {v1, p0, v2, v3}, Lcom/eltechs/axs/Keyboard$XKey;-><init>(Lcom/eltechs/axs/Keyboard;Lcom/eltechs/axs/KeyCodesX;I)V

    const/16 v2, 0x30fc

    aput-object v1, v0, v2

    return-void
.end method

.method private convertAKeycodeToXKeycode(I)Lcom/eltechs/axs/KeyCodesX;
    .locals 1

    .line 125
    iget-object v0, p0, Lcom/eltechs/axs/Keyboard;->AKeycodeToXKeycodeMap:[Lcom/eltechs/axs/KeyCodesX;

    aget-object p1, v0, p1

    return-object p1
.end method

.method private convertUnicodeToXKey(I)Lcom/eltechs/axs/Keyboard$XKey;
    .locals 1

    .line 130
    iget-object v0, p0, Lcom/eltechs/axs/Keyboard;->UnicodeToXKeyMap:[Lcom/eltechs/axs/Keyboard$XKey;

    aget-object p1, v0, p1

    return-object p1
.end method


# virtual methods
.method public handleKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 2

    .line 64
    invoke-direct {p0, p1}, Lcom/eltechs/axs/Keyboard;->convertAKeycodeToXKeycode(I)Lcom/eltechs/axs/KeyCodesX;

    move-result-object p1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 69
    :cond_0
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getUnicodeChar()I

    move-result p2

    invoke-direct {p0, p2}, Lcom/eltechs/axs/Keyboard;->convertUnicodeToXKey(I)Lcom/eltechs/axs/Keyboard$XKey;

    move-result-object p2

    .line 70
    iget-object v1, p0, Lcom/eltechs/axs/Keyboard;->reporter:Lcom/eltechs/axs/KeyEventReporter;

    if-eqz p2, :cond_1

    iget v0, p2, Lcom/eltechs/axs/Keyboard$XKey;->keysym:I

    :cond_1
    invoke-virtual {v1, p1, v0}, Lcom/eltechs/axs/KeyEventReporter;->reportKeyPressWithSym(Lcom/eltechs/axs/KeyCodesX;I)V

    const/4 p1, 0x1

    return p1
.end method

.method public handleKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 2

    .line 83
    invoke-direct {p0, p1}, Lcom/eltechs/axs/Keyboard;->convertAKeycodeToXKeycode(I)Lcom/eltechs/axs/KeyCodesX;

    move-result-object p1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 88
    :cond_0
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getUnicodeChar()I

    move-result p2

    invoke-direct {p0, p2}, Lcom/eltechs/axs/Keyboard;->convertUnicodeToXKey(I)Lcom/eltechs/axs/Keyboard$XKey;

    move-result-object p2

    .line 89
    iget-object v1, p0, Lcom/eltechs/axs/Keyboard;->reporter:Lcom/eltechs/axs/KeyEventReporter;

    if-eqz p2, :cond_1

    iget v0, p2, Lcom/eltechs/axs/Keyboard$XKey;->keysym:I

    :cond_1
    invoke-virtual {v1, p1, v0}, Lcom/eltechs/axs/KeyEventReporter;->reportKeyReleaseWithSym(Lcom/eltechs/axs/KeyCodesX;I)V

    const/4 p1, 0x1

    return p1
.end method

.method public handleUnicodeKeyType(Landroid/view/KeyEvent;)Z
    .locals 6

    .line 102
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getCharacters()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    move v1, v0

    move v2, v1

    .line 103
    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {p1, v0, v3}, Ljava/lang/String;->codePointCount(II)I

    move-result v3

    if-ge v1, v3, :cond_1

    .line 105
    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->offsetByCodePoints(II)I

    move-result v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->codePointAt(I)I

    move-result v3

    .line 106
    invoke-direct {p0, v3}, Lcom/eltechs/axs/Keyboard;->convertUnicodeToXKey(I)Lcom/eltechs/axs/Keyboard$XKey;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 107
    iget-object v4, v3, Lcom/eltechs/axs/Keyboard$XKey;->keycode:Lcom/eltechs/axs/KeyCodesX;

    sget-object v5, Lcom/eltechs/axs/KeyCodesX;->KEY_NONE:Lcom/eltechs/axs/KeyCodesX;

    if-eq v4, v5, :cond_0

    .line 109
    iget-object v2, p0, Lcom/eltechs/axs/Keyboard;->reporter:Lcom/eltechs/axs/KeyEventReporter;

    iget-object v4, v3, Lcom/eltechs/axs/Keyboard$XKey;->keycode:Lcom/eltechs/axs/KeyCodesX;

    iget v3, v3, Lcom/eltechs/axs/Keyboard$XKey;->keysym:I

    invoke-virtual {v2, v4, v3}, Lcom/eltechs/axs/KeyEventReporter;->reportKeyWithSym(Lcom/eltechs/axs/KeyCodesX;I)V

    const/4 v2, 0x1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v2
.end method
