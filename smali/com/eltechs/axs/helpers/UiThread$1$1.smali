.class Lcom/eltechs/axs/helpers/UiThread$1$1;
.super Ljava/lang/Object;
.source "UiThread.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/eltechs/axs/helpers/UiThread$1;->invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/eltechs/axs/helpers/UiThread$1;

.field final synthetic val$args:[Ljava/lang/Object;

.field final synthetic val$method:Ljava/lang/reflect/Method;


# direct methods
.method constructor <init>(Lcom/eltechs/axs/helpers/UiThread$1;Ljava/lang/reflect/Method;[Ljava/lang/Object;)V
    .locals 0

    .line 67
    iput-object p1, p0, Lcom/eltechs/axs/helpers/UiThread$1$1;->this$0:Lcom/eltechs/axs/helpers/UiThread$1;

    iput-object p2, p0, Lcom/eltechs/axs/helpers/UiThread$1$1;->val$method:Ljava/lang/reflect/Method;

    iput-object p3, p0, Lcom/eltechs/axs/helpers/UiThread$1$1;->val$args:[Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 73
    :try_start_0
    iget-object v2, p0, Lcom/eltechs/axs/helpers/UiThread$1$1;->val$method:Ljava/lang/reflect/Method;

    iget-object v3, p0, Lcom/eltechs/axs/helpers/UiThread$1$1;->this$0:Lcom/eltechs/axs/helpers/UiThread$1;

    iget-object v3, v3, Lcom/eltechs/axs/helpers/UiThread$1;->val$realListener:Ljava/lang/Object;

    iget-object v4, p0, Lcom/eltechs/axs/helpers/UiThread$1$1;->val$args:[Ljava/lang/Object;

    invoke-virtual {v2, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    const-string v3, "Listener method %s has thrown an exception %s."

    const/4 v4, 0x2

    .line 81
    new-array v4, v4, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/eltechs/axs/helpers/UiThread$1$1;->val$method:Ljava/lang/reflect/Method;

    aput-object v5, v4, v1

    .line 83
    invoke-virtual {v2}, Ljava/lang/reflect/InvocationTargetException;->getTargetException()Ljava/lang/Throwable;

    move-result-object v2

    aput-object v2, v4, v0

    .line 81
    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/eltechs/axs/helpers/Assert;->state(ZLjava/lang/String;)V

    goto :goto_0

    :catch_1
    const-string v2, "Listener method %s is expected to be public; can\'t get IllegalAccessException when calling it."

    .line 76
    new-array v0, v0, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/eltechs/axs/helpers/UiThread$1$1;->val$method:Ljava/lang/reflect/Method;

    aput-object v3, v0, v1

    invoke-static {v2, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/eltechs/axs/helpers/Assert;->unreachable(Ljava/lang/String;)V

    :goto_0
    return-void
.end method
