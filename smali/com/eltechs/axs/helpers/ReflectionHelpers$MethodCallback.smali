.class public interface abstract Lcom/eltechs/axs/helpers/ReflectionHelpers$MethodCallback;
.super Ljava/lang/Object;
.source "ReflectionHelpers.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/eltechs/axs/helpers/ReflectionHelpers;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "MethodCallback"
.end annotation


# virtual methods
.method public abstract apply(Ljava/lang/reflect/Method;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalAccessException;
        }
    .end annotation
.end method
