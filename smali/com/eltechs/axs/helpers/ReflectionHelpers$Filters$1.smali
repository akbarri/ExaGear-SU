.class final Lcom/eltechs/axs/helpers/ReflectionHelpers$Filters$1;
.super Ljava/lang/Object;
.source "ReflectionHelpers.java"

# interfaces
.implements Lcom/eltechs/axs/helpers/ReflectionHelpers$MethodFilter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/eltechs/axs/helpers/ReflectionHelpers$Filters;->instanceMethodsBearingAnnotation(Ljava/lang/Class;)Lcom/eltechs/axs/helpers/ReflectionHelpers$MethodFilter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$annotationClass:Ljava/lang/Class;


# direct methods
.method constructor <init>(Ljava/lang/Class;)V
    .locals 0

    .line 134
    iput-object p1, p0, Lcom/eltechs/axs/helpers/ReflectionHelpers$Filters$1;->val$annotationClass:Ljava/lang/Class;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public matches(Ljava/lang/reflect/Method;)Z
    .locals 2

    .line 138
    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getModifiers()I

    move-result v0

    and-int/lit8 v0, v0, 0x8

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 143
    :cond_0
    iget-object v0, p0, Lcom/eltechs/axs/helpers/ReflectionHelpers$Filters$1;->val$annotationClass:Ljava/lang/Class;

    invoke-virtual {p1, v0}, Ljava/lang/reflect/Method;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object p1

    if-eqz p1, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method
