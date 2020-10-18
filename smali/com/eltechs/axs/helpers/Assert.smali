.class public abstract Lcom/eltechs/axs/helpers/Assert;
.super Ljava/lang/Object;
.source "Assert.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static abort(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1

    .line 98
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public static isFalse(Z)V
    .locals 1

    if-eqz p0, :cond_0

    .line 48
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "[Assertion failed]: this expression must be false."

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_0
    return-void
.end method

.method public static isFalse(ZLjava/lang/String;)V
    .locals 0

    if-eqz p0, :cond_0

    .line 56
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_0
    return-void
.end method

.method public static isTrue(Z)V
    .locals 1

    if-nez p0, :cond_0

    .line 32
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "[Assertion failed]: this expression must be true."

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_0
    return-void
.end method

.method public static isTrue(ZLjava/lang/String;)V
    .locals 0

    if-nez p0, :cond_0

    .line 40
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_0
    return-void
.end method

.method public static notImplementedYet()V
    .locals 2

    .line 88
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Not implemented yet."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static notImplementedYet(Ljava/lang/String;)V
    .locals 1

    .line 93
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0, p0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static notNull(Ljava/lang/Object;)V
    .locals 1

    if-nez p0, :cond_0

    .line 16
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "[Assertion failed]: this argument is required, it can not be null."

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_0
    return-void
.end method

.method public static notNull(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 0

    if-nez p0, :cond_0

    .line 24
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_0
    return-void
.end method

.method public static state(Z)V
    .locals 1

    if-nez p0, :cond_0

    .line 64
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "[Assertion failed]: this expression must be true."

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_0
    return-void
.end method

.method public static state(ZLjava/lang/String;)V
    .locals 0

    if-nez p0, :cond_0

    .line 72
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_0
    return-void
.end method

.method public static unreachable()V
    .locals 2

    .line 78
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "[Assertion failed]: this code must not be reached."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static unreachable(Ljava/lang/String;)V
    .locals 1

    .line 83
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
