.class public abstract Lcom/eltechs/axs/helpers/ReflectionHelpers;
.super Ljava/lang/Object;
.source "ReflectionHelpers.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/eltechs/axs/helpers/ReflectionHelpers$Filters;,
        Lcom/eltechs/axs/helpers/ReflectionHelpers$FieldCallback;,
        Lcom/eltechs/axs/helpers/ReflectionHelpers$FieldFilter;,
        Lcom/eltechs/axs/helpers/ReflectionHelpers$MethodCallback;,
        Lcom/eltechs/axs/helpers/ReflectionHelpers$MethodFilter;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static canThrowCheckedExceptions(Ljava/lang/reflect/Method;)Z
    .locals 5

    .line 49
    invoke-virtual {p0}, Ljava/lang/reflect/Method;->getExceptionTypes()[Ljava/lang/Class;

    move-result-object p0

    const/4 v0, 0x0

    array-length v1, p0

    move v2, v0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, p0, v2

    .line 51
    const-class v4, Ljava/lang/RuntimeException;

    invoke-virtual {v4, v3}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v3

    if-nez v3, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method

.method public static doWithFields(Ljava/lang/Class;Lcom/eltechs/axs/helpers/ReflectionHelpers$FieldCallback;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Lcom/eltechs/axs/helpers/ReflectionHelpers$FieldCallback;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalAccessException;
        }
    .end annotation

    :goto_0
    if-eqz p0, :cond_1

    .line 109
    invoke-virtual {p0}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_1
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 111
    invoke-interface {p1, v3}, Lcom/eltechs/axs/helpers/ReflectionHelpers$FieldCallback;->apply(Ljava/lang/reflect/Field;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 107
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object p0

    goto :goto_0

    :cond_1
    return-void
.end method

.method public static doWithFields(Ljava/lang/Class;Lcom/eltechs/axs/helpers/ReflectionHelpers$FieldCallback;Lcom/eltechs/axs/helpers/ReflectionHelpers$FieldFilter;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Lcom/eltechs/axs/helpers/ReflectionHelpers$FieldCallback;",
            "Lcom/eltechs/axs/helpers/ReflectionHelpers$FieldFilter;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalAccessException;
        }
    .end annotation

    :goto_0
    if-eqz p0, :cond_2

    .line 120
    invoke-virtual {p0}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_1
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 122
    invoke-interface {p2, v3}, Lcom/eltechs/axs/helpers/ReflectionHelpers$FieldFilter;->matches(Ljava/lang/reflect/Field;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 124
    invoke-interface {p1, v3}, Lcom/eltechs/axs/helpers/ReflectionHelpers$FieldCallback;->apply(Ljava/lang/reflect/Field;)V

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 118
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object p0

    goto :goto_0

    :cond_2
    return-void
.end method

.method public static doWithMethods(Ljava/lang/Class;Lcom/eltechs/axs/helpers/ReflectionHelpers$MethodCallback;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Lcom/eltechs/axs/helpers/ReflectionHelpers$MethodCallback;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalAccessException;
        }
    .end annotation

    :goto_0
    if-eqz p0, :cond_1

    .line 84
    invoke-virtual {p0}, Ljava/lang/Class;->getDeclaredMethods()[Ljava/lang/reflect/Method;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_1
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 86
    invoke-interface {p1, v3}, Lcom/eltechs/axs/helpers/ReflectionHelpers$MethodCallback;->apply(Ljava/lang/reflect/Method;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 82
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object p0

    goto :goto_0

    :cond_1
    return-void
.end method

.method public static doWithMethods(Ljava/lang/Class;Lcom/eltechs/axs/helpers/ReflectionHelpers$MethodCallback;Lcom/eltechs/axs/helpers/ReflectionHelpers$MethodFilter;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Lcom/eltechs/axs/helpers/ReflectionHelpers$MethodCallback;",
            "Lcom/eltechs/axs/helpers/ReflectionHelpers$MethodFilter;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalAccessException;
        }
    .end annotation

    :goto_0
    if-eqz p0, :cond_2

    .line 95
    invoke-virtual {p0}, Ljava/lang/Class;->getDeclaredMethods()[Ljava/lang/reflect/Method;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_1
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 97
    invoke-interface {p2, v3}, Lcom/eltechs/axs/helpers/ReflectionHelpers$MethodFilter;->matches(Ljava/lang/reflect/Method;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 99
    invoke-interface {p1, v3}, Lcom/eltechs/axs/helpers/ReflectionHelpers$MethodCallback;->apply(Ljava/lang/reflect/Method;)V

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 93
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object p0

    goto :goto_0

    :cond_2
    return-void
.end method

.method public static isPublic(Ljava/lang/reflect/Field;)Z
    .locals 1

    .line 67
    invoke-virtual {p0}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result p0

    const/4 v0, 0x1

    and-int/2addr p0, v0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isPublic(Ljava/lang/reflect/Method;)Z
    .locals 1

    .line 62
    invoke-virtual {p0}, Ljava/lang/reflect/Method;->getModifiers()I

    move-result p0

    const/4 v0, 0x1

    and-int/2addr p0, v0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isStatic(Ljava/lang/reflect/Field;)Z
    .locals 0

    .line 77
    invoke-virtual {p0}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result p0

    and-int/lit8 p0, p0, 0x8

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static isStatic(Ljava/lang/reflect/Method;)Z
    .locals 0

    .line 72
    invoke-virtual {p0}, Ljava/lang/reflect/Method;->getModifiers()I

    move-result p0

    and-int/lit8 p0, p0, 0x8

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
