.class public Lcom/eltechs/axs/activities/menus/ShowKeyboard;
.super Lcom/eltechs/axs/widgets/actions/AbstractAction;
.source "ShowKeyboard.java"


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 19
    sget v0, Lcom/eltechs/axs/R$string;->show_keyboard:I

    invoke-static {v0}, Lcom/eltechs/axs/helpers/AndroidHelpers;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/eltechs/axs/widgets/actions/AbstractAction;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 0

    .line 25
    invoke-static {}, Lcom/eltechs/axs/helpers/AndroidHelpers;->toggleSoftInput()V

    return-void
.end method
