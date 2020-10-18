.class public Lcom/eltechs/axs/container/AutowiringEnhancedObject;
.super Ljava/lang/Object;
.source "AutowiringEnhancedObject.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final container:Lcom/eltechs/axs/container/Container;

.field private final proxy:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Ljava/lang/Object;Lcom/eltechs/axs/container/Container;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lcom/eltechs/axs/container/Container;",
            ")V"
        }
    .end annotation

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput-object p1, p0, Lcom/eltechs/axs/container/AutowiringEnhancedObject;->proxy:Ljava/lang/Object;

    .line 24
    iput-object p2, p0, Lcom/eltechs/axs/container/AutowiringEnhancedObject;->container:Lcom/eltechs/axs/container/Container;

    return-void
.end method

.method static synthetic access$000(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 16
    invoke-static {p0}, Lcom/eltechs/axs/container/AutowiringEnhancedObject;->getPropertyNameOfSetter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$100(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 16
    invoke-static {p0}, Lcom/eltechs/axs/container/AutowiringEnhancedObject;->getPropertyNameOfGetter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static addAutowiring(Ljava/lang/Class;)Lcom/eltechs/axs/container/AutowiringEnhancedObject;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "*>;)",
            "Lcom/eltechs/axs/container/AutowiringEnhancedObject<",
            "TT;>;"
        }
    .end annotation

    .line 39
    new-instance v0, Lcom/eltechs/axs/container/Container;

    invoke-direct {v0}, Lcom/eltechs/axs/container/Container;-><init>()V

    .line 41
    invoke-virtual {p0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    new-instance p0, Lcom/eltechs/axs/container/AutowiringEnhancedObject$1;

    invoke-direct {p0, v0}, Lcom/eltechs/axs/container/AutowiringEnhancedObject$1;-><init>(Lcom/eltechs/axs/container/Container;)V

    invoke-static {v1, v2, p0}, Ljava/lang/reflect/Proxy;->newProxyInstance(Ljava/lang/ClassLoader;[Ljava/lang/Class;Ljava/lang/reflect/InvocationHandler;)Ljava/lang/Object;

    move-result-object p0

    .line 64
    new-instance v1, Lcom/eltechs/axs/container/AutowiringEnhancedObject;

    invoke-direct {v1, p0, v0}, Lcom/eltechs/axs/container/AutowiringEnhancedObject;-><init>(Ljava/lang/Object;Lcom/eltechs/axs/container/Container;)V

    return-object v1
.end method

.method private static getPropertyNameOfGetter(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const-string v0, "get"

    .line 79
    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x3

    .line 81
    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const-string v0, "is"

    .line 84
    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x2

    .line 86
    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method private static getPropertyNameOfSetter(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const-string v0, "set"

    .line 69
    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x3

    .line 71
    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public getContainer()Lcom/eltechs/axs/container/Container;
    .locals 1

    .line 34
    iget-object v0, p0, Lcom/eltechs/axs/container/AutowiringEnhancedObject;->container:Lcom/eltechs/axs/container/Container;

    return-object v0
.end method

.method public getProxy()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 29
    iget-object v0, p0, Lcom/eltechs/axs/container/AutowiringEnhancedObject;->proxy:Ljava/lang/Object;

    return-object v0
.end method
