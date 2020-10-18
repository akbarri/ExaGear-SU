.class public abstract Lcom/eltechs/axs/helpers/ReflectionHelpers$Filters;
.super Ljava/lang/Object;
.source "ReflectionHelpers.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/eltechs/axs/helpers/ReflectionHelpers;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Filters"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 130
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static instanceMethodsBearingAnnotation(Ljava/lang/Class;)Lcom/eltechs/axs/helpers/ReflectionHelpers$MethodFilter;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Ljava/lang/annotation/Annotation;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)",
            "Lcom/eltechs/axs/helpers/ReflectionHelpers$MethodFilter;"
        }
    .end annotation

    .line 134
    new-instance v0, Lcom/eltechs/axs/helpers/ReflectionHelpers$Filters$1;

    invoke-direct {v0, p0}, Lcom/eltechs/axs/helpers/ReflectionHelpers$Filters$1;-><init>(Ljava/lang/Class;)V

    return-object v0
.end method

.method public static publicStaticFields(Ljava/lang/Class;)Lcom/eltechs/axs/helpers/ReflectionHelpers$FieldFilter;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Lcom/eltechs/axs/helpers/ReflectionHelpers$FieldFilter;"
        }
    .end annotation

    .line 150
    new-instance v0, Lcom/eltechs/axs/helpers/ReflectionHelpers$Filters$2;

    invoke-direct {v0, p0}, Lcom/eltechs/axs/helpers/ReflectionHelpers$Filters$2;-><init>(Ljava/lang/Class;)V

    return-object v0
.end method
