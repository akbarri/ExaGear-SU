.class final Lcom/eltechs/axs/container/impl/AutowiredPropertiesScanner$1;
.super Ljava/lang/Object;
.source "AutowiredPropertiesScanner.java"

# interfaces
.implements Lcom/eltechs/axs/helpers/ReflectionHelpers$MethodCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/eltechs/axs/container/impl/AutowiredPropertiesScanner;->listAutowiringRequests(Ljava/lang/Class;)Ljava/util/List;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$requests:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Ljava/util/ArrayList;)V
    .locals 0

    .line 29
    iput-object p1, p0, Lcom/eltechs/axs/container/impl/AutowiredPropertiesScanner$1;->val$requests:Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public apply(Ljava/lang/reflect/Method;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalAccessException;
        }
    .end annotation

    .line 33
    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 34
    array-length v3, v0

    if-ne v2, v3, :cond_0

    move v3, v2

    goto :goto_0

    :cond_0
    move v3, v1

    .line 36
    :goto_0
    invoke-static {p1}, Lcom/eltechs/axs/helpers/ReflectionHelpers;->isStatic(Ljava/lang/reflect/Method;)Z

    move-result v4

    const-string v5, "The method %s is marked with @Autowired annotation and must be a member method."

    new-array v6, v2, [Ljava/lang/Object;

    aput-object p1, v6, v1

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/eltechs/axs/helpers/Assert;->isFalse(ZLjava/lang/String;)V

    const-string v4, "The method %s is marked with @Autowired annotation and must be a setter taking one argument."

    .line 38
    new-array v5, v2, [Ljava/lang/Object;

    aput-object p1, v5, v1

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/eltechs/axs/helpers/Assert;->isTrue(ZLjava/lang/String;)V

    .line 40
    invoke-static {p1}, Lcom/eltechs/axs/helpers/ReflectionHelpers;->canThrowCheckedExceptions(Ljava/lang/reflect/Method;)Z

    move-result v3

    const-string v4, "The method %s is marked with @Autowired annotation and must not throw checked exceptions."

    new-array v5, v2, [Ljava/lang/Object;

    aput-object p1, v5, v1

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/eltechs/axs/helpers/Assert;->isFalse(ZLjava/lang/String;)V

    .line 43
    invoke-virtual {p1, v2}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 44
    iget-object v2, p0, Lcom/eltechs/axs/container/impl/AutowiredPropertiesScanner$1;->val$requests:Ljava/util/ArrayList;

    new-instance v3, Lcom/eltechs/axs/container/impl/AutowiringRequest;

    aget-object v0, v0, v1

    invoke-direct {v3, v0, p1}, Lcom/eltechs/axs/container/impl/AutowiringRequest;-><init>(Ljava/lang/Class;Ljava/lang/reflect/Method;)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method
