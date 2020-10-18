.class Lcom/eltechs/axs/gamesControls/DiabloInterfaceOverlay$1MouseButtonEventReporter2;
.super Ljava/lang/Object;
.source "DiabloInterfaceOverlay.java"

# interfaces
.implements Lcom/eltechs/axs/ButtonEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/eltechs/axs/gamesControls/DiabloInterfaceOverlay;->attach(Lcom/eltechs/axs/activities/XServerDisplayActivity;Lcom/eltechs/axs/widgets/viewOfXServer/ViewOfXServer;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MouseButtonEventReporter2"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/eltechs/axs/gamesControls/DiabloInterfaceOverlay;

.field widget:Lcom/eltechs/axs/FloatJoyStickWidget;


# direct methods
.method public constructor <init>(Lcom/eltechs/axs/gamesControls/DiabloInterfaceOverlay;Lcom/eltechs/axs/FloatJoyStickWidget;)V
    .locals 0

    .line 139
    iput-object p1, p0, Lcom/eltechs/axs/gamesControls/DiabloInterfaceOverlay$1MouseButtonEventReporter2;->this$0:Lcom/eltechs/axs/gamesControls/DiabloInterfaceOverlay;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 140
    iput-object p2, p0, Lcom/eltechs/axs/gamesControls/DiabloInterfaceOverlay$1MouseButtonEventReporter2;->widget:Lcom/eltechs/axs/FloatJoyStickWidget;

    return-void
.end method


# virtual methods
.method public pressed()V
    .locals 2

    .line 144
    iget-object v0, p0, Lcom/eltechs/axs/gamesControls/DiabloInterfaceOverlay$1MouseButtonEventReporter2;->widget:Lcom/eltechs/axs/FloatJoyStickWidget;

    sget-object v1, Lcom/eltechs/axs/FloatJoyStickWidget$JoyStickMode;->JOYSTICK_MODE_SUB:Lcom/eltechs/axs/FloatJoyStickWidget$JoyStickMode;

    invoke-virtual {v0, v1}, Lcom/eltechs/axs/FloatJoyStickWidget;->setMode(Lcom/eltechs/axs/FloatJoyStickWidget$JoyStickMode;)V

    return-void
.end method

.method public released()V
    .locals 2

    .line 148
    iget-object v0, p0, Lcom/eltechs/axs/gamesControls/DiabloInterfaceOverlay$1MouseButtonEventReporter2;->widget:Lcom/eltechs/axs/FloatJoyStickWidget;

    sget-object v1, Lcom/eltechs/axs/FloatJoyStickWidget$JoyStickMode;->JOYSTICK_MODE_MAIN:Lcom/eltechs/axs/FloatJoyStickWidget$JoyStickMode;

    invoke-virtual {v0, v1}, Lcom/eltechs/axs/FloatJoyStickWidget;->setMode(Lcom/eltechs/axs/FloatJoyStickWidget$JoyStickMode;)V

    return-void
.end method
