.class public Lcom/eltechs/axs/activities/menus/Quit;
.super Lcom/eltechs/axs/widgets/actions/AbstractAction;
.source "Quit.java"


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 19
    sget v0, Lcom/eltechs/axs/R$string;->stop_Xserver:I

    invoke-static {v0}, Lcom/eltechs/axs/helpers/AndroidHelpers;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/eltechs/axs/widgets/actions/AbstractAction;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    const/4 v0, 0x1

    .line 25
    invoke-static {v0}, Lcom/eltechs/axs/activities/StartupActivity;->shutdownAXSApplication(Z)V

    return-void
.end method
