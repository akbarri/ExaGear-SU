.class final Lcom/eltechs/axs/helpers/ReflectionHelpers$Filters$2;
.super Ljava/lang/Object;
.source "ReflectionHelpers.java"

# interfaces
.implements Lcom/eltechs/axs/helpers/ReflectionHelpers$FieldFilter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/eltechs/axs/helpers/ReflectionHelpers$Filters;->publicStaticFields(Ljava/lang/Class;)Lcom/eltechs/axs/helpers/ReflectionHelpers$FieldFilter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$type:Ljava/lang/Class;


# direct methods
.method constructor <init>(Ljava/lang/Class;)V
    .locals 0

    .line 150
    iput-object p1, p0, Lcom/eltechs/axs/helpers/ReflectionHelpers$Filters$2;->val$type:Ljava/lang/Class;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public matches(Ljava/lang/reflect/Field;)Z
    .locals 2

    .line 154
    invoke-virtual {p1}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v0

    and-int/lit8 v1, v0, 0x1

    if-eqz v1, :cond_1

    and-int/lit8 v0, v0, 0x8

    if-nez v0, :cond_0

    goto :goto_0

    .line 160
    :cond_0
    iget-object v0, p0, Lcom/eltechs/axs/helpers/ReflectionHelpers$Filters$2;->val$type:Ljava/lang/Class;

    invoke-virtual {p1}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result p1

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return p1
.end method
