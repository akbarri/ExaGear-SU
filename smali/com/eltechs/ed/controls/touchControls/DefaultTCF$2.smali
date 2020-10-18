.class Lcom/eltechs/ed/controls/touchControls/DefaultTCF$2;
.super Ljava/lang/Object;
.source "DefaultTCF.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/eltechs/ed/controls/touchControls/DefaultTCF;->createGestureContext(Lcom/eltechs/axs/widgets/viewOfXServer/ViewOfXServer;Lcom/eltechs/axs/TouchArea;Lcom/eltechs/axs/TouchEventMultiplexor;I)Lcom/eltechs/axs/GestureStateMachine/GestureContext;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/eltechs/ed/controls/touchControls/DefaultTCF;


# direct methods
.method constructor <init>(Lcom/eltechs/ed/controls/touchControls/DefaultTCF;)V
    .locals 0

    .line 235
    iput-object p1, p0, Lcom/eltechs/ed/controls/touchControls/DefaultTCF$2;->this$0:Lcom/eltechs/ed/controls/touchControls/DefaultTCF;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 0

    .line 239
    invoke-static {}, Lcom/eltechs/axs/helpers/AndroidHelpers;->toggleSoftInput()V

    return-void
.end method
