.class Lcom/eltechs/axs/FloatJoyStickWidget$2;
.super Lcom/eltechs/axs/helpers/OneShotTimer;
.source "FloatJoyStickWidget.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/eltechs/axs/FloatJoyStickWidget;-><init>(Landroid/content/Context;Lcom/eltechs/axs/widgets/viewOfXServer/ViewOfXServer;Lcom/eltechs/axs/PointerEventReporter;Lcom/eltechs/axs/GestureStateMachine/GestureJoyStickMode;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/eltechs/axs/FloatJoyStickWidget;


# direct methods
.method constructor <init>(Lcom/eltechs/axs/FloatJoyStickWidget;J)V
    .locals 0

    .line 53
    iput-object p1, p0, Lcom/eltechs/axs/FloatJoyStickWidget$2;->this$0:Lcom/eltechs/axs/FloatJoyStickWidget;

    invoke-direct {p0, p2, p3}, Lcom/eltechs/axs/helpers/OneShotTimer;-><init>(J)V

    return-void
.end method


# virtual methods
.method public onFinish()V
    .locals 1

    .line 55
    iget-object v0, p0, Lcom/eltechs/axs/FloatJoyStickWidget$2;->this$0:Lcom/eltechs/axs/FloatJoyStickWidget;

    invoke-static {v0}, Lcom/eltechs/axs/FloatJoyStickWidget;->access$000(Lcom/eltechs/axs/FloatJoyStickWidget;)V

    return-void
.end method
