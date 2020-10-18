.class public Lcom/eltechs/axs/container/impl/LifecycleHandlerMethod;
.super Ljava/lang/Object;
.source "LifecycleHandlerMethod.java"


# instance fields
.field private final impl:Ljava/lang/reflect/Method;


# direct methods
.method public constructor <init>(Ljava/lang/reflect/Method;)V
    .locals 0

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-object p1, p0, Lcom/eltechs/axs/container/impl/LifecycleHandlerMethod;->impl:Ljava/lang/reflect/Method;

    return-void
.end method


# virtual methods
.method public apply(Ljava/lang/Object;)V
    .locals 3

    const/4 v0, 0x0

    .line 28
    :try_start_0
    iget-object v1, p0, Lcom/eltechs/axs/container/impl/LifecycleHandlerMethod;->impl:Ljava/lang/reflect/Method;

    new-array v2, v0, [Ljava/lang/Object;

    invoke-virtual {v1, p1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 34
    invoke-virtual {p1}, Ljava/lang/reflect/InvocationTargetException;->getTargetException()Ljava/lang/Throwable;

    move-result-object p1

    .line 35
    instance-of v0, p1, Ljava/lang/RuntimeException;

    invoke-static {v0}, Lcom/eltechs/axs/helpers/Assert;->state(Z)V

    .line 37
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "A @PostAdd or @PreRemove method has thrown a runtime exception."

    invoke-direct {v0, v1, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :catch_1
    const-string p1, "Lifecycle handler methods are always marked accessible; can\'t get IllegalAccessException."

    .line 31
    invoke-static {v0, p1}, Lcom/eltechs/axs/helpers/Assert;->state(ZLjava/lang/String;)V

    :goto_0
    return-void
.end method
