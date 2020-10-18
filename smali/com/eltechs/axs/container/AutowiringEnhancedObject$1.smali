.class final Lcom/eltechs/axs/container/AutowiringEnhancedObject$1;
.super Ljava/lang/Object;
.source "AutowiringEnhancedObject.java"

# interfaces
.implements Ljava/lang/reflect/InvocationHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/eltechs/axs/container/AutowiringEnhancedObject;->addAutowiring(Ljava/lang/Class;)Lcom/eltechs/axs/container/AutowiringEnhancedObject;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$container:Lcom/eltechs/axs/container/Container;


# direct methods
.method constructor <init>(Lcom/eltechs/axs/container/Container;)V
    .locals 0

    .line 41
    iput-object p1, p0, Lcom/eltechs/axs/container/AutowiringEnhancedObject$1;->val$container:Lcom/eltechs/axs/container/Container;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 45
    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/eltechs/axs/container/AutowiringEnhancedObject;->access$000(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 46
    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/eltechs/axs/container/AutowiringEnhancedObject;->access$100(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 50
    iget-object p2, p0, Lcom/eltechs/axs/container/AutowiringEnhancedObject$1;->val$container:Lcom/eltechs/axs/container/Container;

    const/4 v1, 0x0

    aget-object p3, p3, v1

    invoke-virtual {p2, p1, p3}, Lcom/eltechs/axs/container/Container;->setComponent(Ljava/lang/String;Ljava/lang/Object;)V

    return-object v0

    :cond_0
    if-eqz p2, :cond_1

    .line 56
    iget-object p1, p0, Lcom/eltechs/axs/container/AutowiringEnhancedObject$1;->val$container:Lcom/eltechs/axs/container/Container;

    invoke-virtual {p1, p2}, Lcom/eltechs/axs/container/Container;->getComponent(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 59
    :cond_1
    invoke-static {}, Lcom/eltechs/axs/helpers/Assert;->unreachable()V

    return-object v0
.end method
