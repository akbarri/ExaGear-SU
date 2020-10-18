.class final Lcom/eltechs/axs/gamesControls/Civilization3InterfaceOverlay$7;
.super Ljava/lang/Object;
.source "Civilization3InterfaceOverlay.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/eltechs/axs/gamesControls/Civilization3InterfaceOverlay;->createSyncButton(Landroid/app/Activity;Lcom/eltechs/axs/widgets/viewOfXServer/ViewOfXServer;I)Landroid/widget/Button;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$target:Lcom/eltechs/axs/widgets/viewOfXServer/ViewOfXServer;


# direct methods
.method constructor <init>(Lcom/eltechs/axs/widgets/viewOfXServer/ViewOfXServer;)V
    .locals 0

    .line 145
    iput-object p1, p0, Lcom/eltechs/axs/gamesControls/Civilization3InterfaceOverlay$7;->val$target:Lcom/eltechs/axs/widgets/viewOfXServer/ViewOfXServer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 7

    .line 150
    iget-object p1, p0, Lcom/eltechs/axs/gamesControls/Civilization3InterfaceOverlay$7;->val$target:Lcom/eltechs/axs/widgets/viewOfXServer/ViewOfXServer;

    invoke-virtual {p1}, Lcom/eltechs/axs/widgets/viewOfXServer/ViewOfXServer;->getXServerFacade()Lcom/eltechs/axs/xserver/ViewFacade;

    move-result-object p1

    .line 152
    new-instance v0, Lcom/eltechs/axs/PointerEventReporter;

    iget-object v1, p0, Lcom/eltechs/axs/gamesControls/Civilization3InterfaceOverlay$7;->val$target:Lcom/eltechs/axs/widgets/viewOfXServer/ViewOfXServer;

    invoke-direct {v0, v1}, Lcom/eltechs/axs/PointerEventReporter;-><init>(Lcom/eltechs/axs/widgets/viewOfXServer/ViewOfXServer;)V

    const/4 v1, 0x0

    .line 154
    invoke-virtual {v0, v1, v1}, Lcom/eltechs/axs/PointerEventReporter;->pointerMove(FF)V

    const/4 v2, 0x0

    const-wide/16 v3, 0x28

    .line 156
    :try_start_0
    invoke-static {v3, v4, v2}, Ljava/lang/Thread;->sleep(JI)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 159
    :catch_0
    invoke-virtual {p1}, Lcom/eltechs/axs/xserver/ViewFacade;->getScreenInfo()Lcom/eltechs/axs/xserver/ScreenInfo;

    move-result-object v5

    iget v5, v5, Lcom/eltechs/axs/xserver/ScreenInfo;->widthInPixels:I

    int-to-float v5, v5

    invoke-virtual {v0, v5, v1}, Lcom/eltechs/axs/PointerEventReporter;->pointerMove(FF)V

    .line 161
    :try_start_1
    invoke-static {v3, v4, v2}, Ljava/lang/Thread;->sleep(JI)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1

    .line 165
    :catch_1
    invoke-virtual {p1}, Lcom/eltechs/axs/xserver/ViewFacade;->getScreenInfo()Lcom/eltechs/axs/xserver/ScreenInfo;

    move-result-object v5

    iget v5, v5, Lcom/eltechs/axs/xserver/ScreenInfo;->widthInPixels:I

    add-int/lit16 v5, v5, 0x3e8

    int-to-float v5, v5

    invoke-virtual {p1}, Lcom/eltechs/axs/xserver/ViewFacade;->getScreenInfo()Lcom/eltechs/axs/xserver/ScreenInfo;

    move-result-object v6

    iget v6, v6, Lcom/eltechs/axs/xserver/ScreenInfo;->heightInPixels:I

    add-int/lit16 v6, v6, 0x3e8

    int-to-float v6, v6

    invoke-virtual {v0, v5, v6}, Lcom/eltechs/axs/PointerEventReporter;->pointerMove(FF)V

    .line 167
    :try_start_2
    invoke-static {v3, v4, v2}, Ljava/lang/Thread;->sleep(JI)V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_2

    .line 170
    :catch_2
    invoke-virtual {p1}, Lcom/eltechs/axs/xserver/ViewFacade;->getScreenInfo()Lcom/eltechs/axs/xserver/ScreenInfo;

    move-result-object p1

    iget p1, p1, Lcom/eltechs/axs/xserver/ScreenInfo;->heightInPixels:I

    int-to-float p1, p1

    invoke-virtual {v0, v1, p1}, Lcom/eltechs/axs/PointerEventReporter;->pointerMove(FF)V

    .line 172
    :try_start_3
    invoke-static {v3, v4, v2}, Ljava/lang/Thread;->sleep(JI)V
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_3

    :catch_3
    const/high16 p1, 0x42480000    # 50.0f

    .line 175
    invoke-virtual {v0, p1, p1}, Lcom/eltechs/axs/PointerEventReporter;->pointerMove(FF)V

    return-void
.end method
