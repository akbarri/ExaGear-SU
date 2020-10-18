.class Lcom/eltechs/ed/startupActions/InitGuestContainersManager$1;
.super Ljava/lang/Object;
.source "InitGuestContainersManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/eltechs/ed/startupActions/InitGuestContainersManager;->execute()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/eltechs/ed/startupActions/InitGuestContainersManager;


# direct methods
.method constructor <init>(Lcom/eltechs/ed/startupActions/InitGuestContainersManager;)V
    .locals 0

    .line 29
    iput-object p1, p0, Lcom/eltechs/ed/startupActions/InitGuestContainersManager$1;->this$0:Lcom/eltechs/ed/startupActions/InitGuestContainersManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 33
    iget-object v0, p0, Lcom/eltechs/ed/startupActions/InitGuestContainersManager$1;->this$0:Lcom/eltechs/ed/startupActions/InitGuestContainersManager;

    invoke-static {v0}, Lcom/eltechs/ed/startupActions/InitGuestContainersManager;->access$000(Lcom/eltechs/ed/startupActions/InitGuestContainersManager;)V

    return-void
.end method
