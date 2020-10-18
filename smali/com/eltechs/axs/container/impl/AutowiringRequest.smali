.class public Lcom/eltechs/axs/container/impl/AutowiringRequest;
.super Ljava/lang/Object;
.source "AutowiringRequest.java"


# instance fields
.field private final argumentType:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field private final setter:Ljava/lang/reflect/Method;


# direct methods
.method public constructor <init>(Ljava/lang/Class;Ljava/lang/reflect/Method;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/reflect/Method;",
            ")V"
        }
    .end annotation

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-object p1, p0, Lcom/eltechs/axs/container/impl/AutowiringRequest;->argumentType:Ljava/lang/Class;

    .line 23
    iput-object p2, p0, Lcom/eltechs/axs/container/impl/AutowiringRequest;->setter:Ljava/lang/reflect/Method;

    return-void
.end method


# virtual methods
.method public inject(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 3

    const/4 v0, 0x0

    .line 35
    :try_start_0
    iget-object v1, p0, Lcom/eltechs/axs/container/impl/AutowiringRequest;->setter:Ljava/lang/reflect/Method;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p2, v2, v0

    invoke-virtual {v1, p1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 41
    invoke-virtual {p1}, Ljava/lang/reflect/InvocationTargetException;->getTargetException()Ljava/lang/Throwable;

    move-result-object p1

    .line 42
    instance-of p2, p1, Ljava/lang/RuntimeException;

    invoke-static {p2}, Lcom/eltechs/axs/helpers/Assert;->state(Z)V

    .line 44
    new-instance p2, Ljava/lang/RuntimeException;

    const-string v0, "An @Autowired setter has thrown a runtime exception."

    invoke-direct {p2, v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2

    :catch_1
    const-string p1, "@Autowired setter methods are always marked accessible; can\'t get IllegalAccessException."

    .line 38
    invoke-static {v0, p1}, Lcom/eltechs/axs/helpers/Assert;->state(ZLjava/lang/String;)V

    :goto_0
    return-void
.end method

.method public isInterestedIn(Ljava/lang/Class;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)Z"
        }
    .end annotation

    .line 28
    iget-object v0, p0, Lcom/eltechs/axs/container/impl/AutowiringRequest;->argumentType:Ljava/lang/Class;

    invoke-virtual {v0, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result p1

    return p1
.end method
