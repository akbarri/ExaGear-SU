.class public Lcom/eltechs/axs/proto/input/annotations/impl/ParameterDescriptor;
.super Ljava/lang/Object;
.source "ParameterDescriptor.java"


# instance fields
.field private final annotations:[Ljava/lang/annotation/Annotation;

.field private final index:I

.field private final type:Ljava/lang/reflect/Type;


# direct methods
.method private constructor <init>(ILjava/lang/Class;Ljava/lang/reflect/Type;[Ljava/lang/annotation/Annotation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/reflect/Type;",
            "[",
            "Ljava/lang/annotation/Annotation;",
            ")V"
        }
    .end annotation

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput p1, p0, Lcom/eltechs/axs/proto/input/annotations/impl/ParameterDescriptor;->index:I

    .line 36
    invoke-direct {p0, p2, p3}, Lcom/eltechs/axs/proto/input/annotations/impl/ParameterDescriptor;->mapPrimitiveType(Ljava/lang/Class;Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;

    move-result-object p1

    iput-object p1, p0, Lcom/eltechs/axs/proto/input/annotations/impl/ParameterDescriptor;->type:Ljava/lang/reflect/Type;

    .line 37
    iput-object p4, p0, Lcom/eltechs/axs/proto/input/annotations/impl/ParameterDescriptor;->annotations:[Ljava/lang/annotation/Annotation;

    return-void
.end method

.method public static getMethodParameters(Ljava/lang/reflect/Method;)[Lcom/eltechs/axs/proto/input/annotations/impl/ParameterDescriptor;
    .locals 9

    .line 48
    invoke-virtual {p0}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v0

    .line 49
    invoke-virtual {p0}, Ljava/lang/reflect/Method;->getGenericParameterTypes()[Ljava/lang/reflect/Type;

    move-result-object v1

    .line 50
    invoke-virtual {p0}, Ljava/lang/reflect/Method;->getParameterAnnotations()[[Ljava/lang/annotation/Annotation;

    move-result-object p0

    const/4 v2, 0x0

    .line 51
    array-length v3, v0

    .line 53
    new-array v4, v3, [Lcom/eltechs/axs/proto/input/annotations/impl/ParameterDescriptor;

    :goto_0
    if-ge v2, v3, :cond_0

    .line 57
    new-instance v5, Lcom/eltechs/axs/proto/input/annotations/impl/ParameterDescriptor;

    aget-object v6, v0, v2

    aget-object v7, v1, v2

    aget-object v8, p0, v2

    invoke-direct {v5, v2, v6, v7, v8}, Lcom/eltechs/axs/proto/input/annotations/impl/ParameterDescriptor;-><init>(ILjava/lang/Class;Ljava/lang/reflect/Type;[Ljava/lang/annotation/Annotation;)V

    aput-object v5, v4, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v4
.end method

.method private mapPrimitiveType(Ljava/lang/Class;Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/reflect/Type;",
            ")",
            "Ljava/lang/reflect/Type;"
        }
    .end annotation

    .line 106
    sget-object v0, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    if-ne p1, v0, :cond_0

    .line 108
    const-class p1, Ljava/lang/Boolean;

    return-object p1

    .line 110
    :cond_0
    sget-object v0, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    if-ne p1, v0, :cond_1

    .line 112
    const-class p1, Ljava/lang/Byte;

    return-object p1

    .line 114
    :cond_1
    sget-object v0, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    if-ne p1, v0, :cond_2

    .line 116
    const-class p1, Ljava/lang/Short;

    return-object p1

    .line 118
    :cond_2
    sget-object v0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-ne p1, v0, :cond_3

    .line 120
    const-class p1, Ljava/lang/Integer;

    return-object p1

    .line 122
    :cond_3
    sget-object v0, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    if-ne p1, v0, :cond_4

    .line 124
    const-class p1, Ljava/lang/Long;

    return-object p1

    :cond_4
    return-object p2
.end method


# virtual methods
.method public getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Ljava/lang/annotation/Annotation;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 93
    iget-object v0, p0, Lcom/eltechs/axs/proto/input/annotations/impl/ParameterDescriptor;->annotations:[Ljava/lang/annotation/Annotation;

    const/4 v1, 0x0

    array-length v2, v0

    :goto_0
    if-ge v1, v2, :cond_1

    aget-object v3, v0, v1

    .line 95
    invoke-interface {v3}, Ljava/lang/annotation/Annotation;->annotationType()Ljava/lang/Class;

    move-result-object v4

    if-ne v4, p1, :cond_0

    return-object v3

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public getIndex()I
    .locals 1

    .line 65
    iget v0, p0, Lcom/eltechs/axs/proto/input/annotations/impl/ParameterDescriptor;->index:I

    return v0
.end method

.method public getRawType()Ljava/lang/Class;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .line 70
    iget-object v0, p0, Lcom/eltechs/axs/proto/input/annotations/impl/ParameterDescriptor;->type:Ljava/lang/reflect/Type;

    instance-of v0, v0, Ljava/lang/Class;

    if-eqz v0, :cond_0

    .line 72
    iget-object v0, p0, Lcom/eltechs/axs/proto/input/annotations/impl/ParameterDescriptor;->type:Ljava/lang/reflect/Type;

    check-cast v0, Ljava/lang/Class;

    return-object v0

    .line 75
    :cond_0
    iget-object v0, p0, Lcom/eltechs/axs/proto/input/annotations/impl/ParameterDescriptor;->type:Ljava/lang/reflect/Type;

    instance-of v0, v0, Ljava/lang/reflect/ParameterizedType;

    if-eqz v0, :cond_1

    .line 77
    iget-object v0, p0, Lcom/eltechs/axs/proto/input/annotations/impl/ParameterDescriptor;->type:Ljava/lang/reflect/Type;

    check-cast v0, Ljava/lang/reflect/ParameterizedType;

    invoke-interface {v0}, Ljava/lang/reflect/ParameterizedType;->getRawType()Ljava/lang/reflect/Type;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    return-object v0

    :cond_1
    const-string v0, "Requests parser does not support handler parameters of type %s."

    const/4 v1, 0x1

    .line 80
    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/eltechs/axs/proto/input/annotations/impl/ParameterDescriptor;->type:Ljava/lang/reflect/Type;

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/eltechs/axs/helpers/Assert;->notImplementedYet(Ljava/lang/String;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method public getType()Ljava/lang/reflect/Type;
    .locals 1

    .line 88
    iget-object v0, p0, Lcom/eltechs/axs/proto/input/annotations/impl/ParameterDescriptor;->type:Ljava/lang/reflect/Type;

    return-object v0
.end method
