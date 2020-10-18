.class final Lcom/eltechs/axs/helpers/UiThread$1;
.super Ljava/lang/Object;
.source "UiThread.java"

# interfaces
.implements Ljava/lang/reflect/InvocationHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/eltechs/axs/helpers/UiThread;->wrap(Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$messageSender:Landroid/os/Handler;

.field final synthetic val$realListener:Ljava/lang/Object;


# direct methods
.method constructor <init>(Landroid/os/Handler;Ljava/lang/Object;)V
    .locals 0

    .line 57
    iput-object p1, p0, Lcom/eltechs/axs/helpers/UiThread$1;->val$messageSender:Landroid/os/Handler;

    iput-object p2, p0, Lcom/eltechs/axs/helpers/UiThread$1;->val$realListener:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 61
    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object p1

    const-string v0, "equals"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    array-length v0, p3

    if-ne v0, p1, :cond_1

    const/4 p2, 0x0

    .line 63
    aget-object p3, p3, p2

    if-ne p0, p3, :cond_0

    goto :goto_0

    :cond_0
    move p1, p2

    :goto_0
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    .line 66
    :cond_1
    iget-object p1, p0, Lcom/eltechs/axs/helpers/UiThread$1;->val$messageSender:Landroid/os/Handler;

    new-instance v0, Lcom/eltechs/axs/helpers/UiThread$1$1;

    invoke-direct {v0, p0, p2, p3}, Lcom/eltechs/axs/helpers/UiThread$1$1;-><init>(Lcom/eltechs/axs/helpers/UiThread$1;Ljava/lang/reflect/Method;[Ljava/lang/Object;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    const/4 p1, 0x0

    return-object p1
.end method
