.class public Lcom/eltechs/axs/activities/FrameworkActivity;
.super Lcom/eltechs/axs/activities/AxsActivity;
.source "FrameworkActivity.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<StateClass::",
        "Lcom/eltechs/axs/applicationState/ApplicationStateBase;",
        ">",
        "Lcom/eltechs/axs/activities/AxsActivity;"
    }
.end annotation


# static fields
.field private static final EXTRA_PARAMETER_NAME:Ljava/lang/String; = "ExtraParameter"

.field private static final GA_KEEPALIVE_DELAY:I = 0x7530


# instance fields
.field private gaKeepaliveTimer:Landroid/os/CountDownTimer;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 27
    invoke-direct {p0}, Lcom/eltechs/axs/activities/AxsActivity;-><init>()V

    const/4 v0, 0x0

    .line 38
    iput-object v0, p0, Lcom/eltechs/axs/activities/FrameworkActivity;->gaKeepaliveTimer:Landroid/os/CountDownTimer;

    return-void
.end method

.method static synthetic access$000(Lcom/eltechs/axs/activities/FrameworkActivity;)Landroid/os/CountDownTimer;
    .locals 0

    .line 27
    iget-object p0, p0, Lcom/eltechs/axs/activities/FrameworkActivity;->gaKeepaliveTimer:Landroid/os/CountDownTimer;

    return-object p0
.end method

.method public static createIntent(Lcom/eltechs/axs/activities/FrameworkActivity;Ljava/lang/Class;Ljava/io/Serializable;)Landroid/content/Intent;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/eltechs/axs/activities/FrameworkActivity;",
            "Ljava/lang/Class<",
            "+",
            "Lcom/eltechs/axs/activities/FrameworkActivity;",
            ">;",
            "Ljava/io/Serializable;",
            ")",
            "Landroid/content/Intent;"
        }
    .end annotation

    .line 133
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p0, p1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    if-eqz p2, :cond_0

    .line 136
    invoke-static {v0, p2}, Lcom/eltechs/axs/activities/FrameworkActivity;->writeExtraParameter(Landroid/content/Intent;Ljava/io/Serializable;)V

    :cond_0
    return-object v0
.end method

.method protected static writeExtraParameter(Landroid/content/Intent;Ljava/io/Serializable;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Ljava/io/Serializable;",
            ">(",
            "Landroid/content/Intent;",
            "TT;)V"
        }
    .end annotation

    const-string v0, "ExtraParameter"

    .line 121
    invoke-virtual {p0, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    return-void
.end method


# virtual methods
.method protected final getApplicationState()Lcom/eltechs/axs/applicationState/ApplicationStateBase;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TStateClass;"
        }
    .end annotation

    .line 116
    invoke-static {}, Lcom/eltechs/axs/Globals;->getApplicationState()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/eltechs/axs/applicationState/ApplicationStateBase;

    return-object v0
.end method

.method protected final getExtraParameter()Ljava/io/Serializable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Ljava/io/Serializable;",
            ">()TT;"
        }
    .end annotation

    .line 126
    invoke-virtual {p0}, Lcom/eltechs/axs/activities/FrameworkActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "ExtraParameter"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    return-object v0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 0

    .line 111
    invoke-super {p0, p1, p2, p3}, Lcom/eltechs/axs/activities/AxsActivity;->onActivityResult(IILandroid/content/Intent;)V

    return-void
.end method

.method protected onPause()V
    .locals 2

    .line 85
    invoke-super {p0}, Lcom/eltechs/axs/activities/AxsActivity;->onPause()V

    .line 87
    invoke-virtual {p0}, Lcom/eltechs/axs/activities/FrameworkActivity;->getApplicationState()Lcom/eltechs/axs/applicationState/ApplicationStateBase;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 90
    invoke-interface {v0, v1}, Lcom/eltechs/axs/applicationState/ApplicationStateBase;->setCurrentActivity(Lcom/eltechs/axs/activities/FrameworkActivity;)V

    :cond_0
    return-void
.end method

.method protected onResume()V
    .locals 1

    .line 77
    invoke-super {p0}, Lcom/eltechs/axs/activities/AxsActivity;->onResume()V

    .line 79
    invoke-virtual {p0}, Lcom/eltechs/axs/activities/FrameworkActivity;->getApplicationState()Lcom/eltechs/axs/applicationState/ApplicationStateBase;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/eltechs/axs/applicationState/ApplicationStateBase;->setCurrentActivity(Lcom/eltechs/axs/activities/FrameworkActivity;)V

    return-void
.end method

.method protected onStart()V
    .locals 7

    .line 43
    invoke-super {p0}, Lcom/eltechs/axs/activities/AxsActivity;->onStart()V

    .line 45
    invoke-static {p0}, Lcom/eltechs/axs/helpers/GAHelpers;->GAStart(Landroid/app/Activity;)V

    .line 47
    iget-object v0, p0, Lcom/eltechs/axs/activities/FrameworkActivity;->gaKeepaliveTimer:Landroid/os/CountDownTimer;

    if-nez v0, :cond_0

    .line 53
    new-instance v0, Lcom/eltechs/axs/activities/FrameworkActivity$1;

    const-wide/32 v3, 0x5265c00

    const-wide/16 v5, 0x7530

    move-object v1, v0

    move-object v2, p0

    invoke-direct/range {v1 .. v6}, Lcom/eltechs/axs/activities/FrameworkActivity$1;-><init>(Lcom/eltechs/axs/activities/FrameworkActivity;JJ)V

    iput-object v0, p0, Lcom/eltechs/axs/activities/FrameworkActivity;->gaKeepaliveTimer:Landroid/os/CountDownTimer;

    .line 70
    iget-object v0, p0, Lcom/eltechs/axs/activities/FrameworkActivity;->gaKeepaliveTimer:Landroid/os/CountDownTimer;

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->start()Landroid/os/CountDownTimer;

    :cond_0
    return-void
.end method

.method protected onStop()V
    .locals 1

    .line 97
    invoke-super {p0}, Lcom/eltechs/axs/activities/AxsActivity;->onStop()V

    .line 99
    invoke-static {p0}, Lcom/eltechs/axs/helpers/GAHelpers;->GAStop(Landroid/app/Activity;)V

    .line 101
    iget-object v0, p0, Lcom/eltechs/axs/activities/FrameworkActivity;->gaKeepaliveTimer:Landroid/os/CountDownTimer;

    if-eqz v0, :cond_0

    .line 103
    iget-object v0, p0, Lcom/eltechs/axs/activities/FrameworkActivity;->gaKeepaliveTimer:Landroid/os/CountDownTimer;

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->cancel()V

    const/4 v0, 0x0

    .line 104
    iput-object v0, p0, Lcom/eltechs/axs/activities/FrameworkActivity;->gaKeepaliveTimer:Landroid/os/CountDownTimer;

    :cond_0
    return-void
.end method

.method protected resizeRootViewToStandardDialogueSize()V
    .locals 2

    .line 170
    invoke-virtual {p0}, Lcom/eltechs/axs/activities/FrameworkActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    const v1, 0x1020002

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x50

    .line 171
    invoke-virtual {p0, v0, v1, v1}, Lcom/eltechs/axs/activities/FrameworkActivity;->resizeViewToFractionOfScreenSize(Landroid/view/View;II)V

    return-void
.end method

.method protected resizeViewToFractionOfScreenSize(Landroid/view/View;II)V
    .locals 2

    .line 183
    invoke-static {}, Lcom/eltechs/axs/helpers/AndroidHelpers;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 184
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    .line 186
    iget v1, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    mul-int/2addr v1, p2

    div-int/lit8 v1, v1, 0x64

    .line 187
    iget p2, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    mul-int/2addr p2, p3

    div-int/lit8 p2, p2, 0x64

    .line 189
    iput v1, p1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 190
    iput p2, p1, Landroid/view/ViewGroup$LayoutParams;->height:I

    return-void
.end method

.method protected signalUserInteractionFinished()V
    .locals 1

    const/4 v0, 0x0

    .line 195
    invoke-virtual {p0, v0}, Lcom/eltechs/axs/activities/FrameworkActivity;->signalUserInteractionFinished(Ljava/io/Serializable;)V

    return-void
.end method

.method protected signalUserInteractionFinished(Ljava/io/Serializable;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Ljava/io/Serializable;",
            ">(TT;)V"
        }
    .end annotation

    const/4 v0, 0x2

    .line 200
    invoke-virtual {p0, v0, p1}, Lcom/eltechs/axs/activities/FrameworkActivity;->setResultEx(ILjava/io/Serializable;)V

    .line 201
    invoke-virtual {p0}, Lcom/eltechs/axs/activities/FrameworkActivity;->finish()V

    return-void
.end method

.method protected startActivity(Ljava/lang/Class;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Lcom/eltechs/axs/activities/FrameworkActivity;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 144
    invoke-static {p0, p1, v0}, Lcom/eltechs/axs/activities/FrameworkActivity;->createIntent(Lcom/eltechs/axs/activities/FrameworkActivity;Ljava/lang/Class;Ljava/io/Serializable;)Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/eltechs/axs/activities/FrameworkActivity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method protected startActivity(Ljava/lang/Class;Ljava/io/Serializable;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Lcom/eltechs/axs/activities/FrameworkActivity;",
            ">;",
            "Ljava/io/Serializable;",
            ")V"
        }
    .end annotation

    .line 149
    invoke-static {p0, p1, p2}, Lcom/eltechs/axs/activities/FrameworkActivity;->createIntent(Lcom/eltechs/axs/activities/FrameworkActivity;Ljava/lang/Class;Ljava/io/Serializable;)Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/eltechs/axs/activities/FrameworkActivity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method protected startActivityForResult(ILjava/lang/Class;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/Class<",
            "+",
            "Lcom/eltechs/axs/activities/FrameworkActivity;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 154
    invoke-virtual {p0, p1, p2, v0}, Lcom/eltechs/axs/activities/FrameworkActivity;->startActivityForResult(ILjava/lang/Class;Ljava/io/Serializable;)V

    return-void
.end method

.method protected startActivityForResult(ILjava/lang/Class;Ljava/io/Serializable;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/Class<",
            "+",
            "Lcom/eltechs/axs/activities/FrameworkActivity;",
            ">;",
            "Ljava/io/Serializable;",
            ")V"
        }
    .end annotation

    .line 159
    invoke-static {p0, p2, p3}, Lcom/eltechs/axs/activities/FrameworkActivity;->createIntent(Lcom/eltechs/axs/activities/FrameworkActivity;Ljava/lang/Class;Ljava/io/Serializable;)Landroid/content/Intent;

    move-result-object p2

    invoke-virtual {p0, p2, p1}, Lcom/eltechs/axs/activities/FrameworkActivity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method
