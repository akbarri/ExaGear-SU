.class public Lcom/eltechs/axs/proto/output/PODVisitor;
.super Ljava/lang/Object;
.source "PODVisitor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/eltechs/axs/proto/output/PODVisitor$Callback;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static visit(Ljava/lang/Object;Lcom/eltechs/axs/proto/output/PODVisitor$Callback;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 25
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->isArray()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 26
    invoke-static {p0, p1}, Lcom/eltechs/axs/proto/output/PODVisitor;->visitArray(Ljava/lang/Object;Lcom/eltechs/axs/proto/output/PODVisitor$Callback;)V

    goto :goto_0

    .line 27
    :cond_0
    instance-of v0, p0, Ljava/util/Collection;

    if-eqz v0, :cond_1

    .line 28
    check-cast p0, Ljava/util/Collection;

    invoke-static {p0, p1}, Lcom/eltechs/axs/proto/output/PODVisitor;->visitCollection(Ljava/util/Collection;Lcom/eltechs/axs/proto/output/PODVisitor$Callback;)V

    goto :goto_0

    .line 29
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Lcom/eltechs/axs/proto/output/POD;

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 30
    invoke-static {p0, p1}, Lcom/eltechs/axs/proto/output/PODVisitor;->visitFields(Ljava/lang/Object;Lcom/eltechs/axs/proto/output/PODVisitor$Callback;)V

    goto :goto_0

    .line 32
    :cond_2
    invoke-interface {p1, p0}, Lcom/eltechs/axs/proto/output/PODVisitor$Callback;->apply(Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method public static visitArray(Ljava/lang/Object;Lcom/eltechs/axs/proto/output/PODVisitor$Callback;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 37
    invoke-static {p0}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 40
    invoke-static {p0, v1}, Ljava/lang/reflect/Array;->get(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2, p1}, Lcom/eltechs/axs/proto/output/PODVisitor;->visit(Ljava/lang/Object;Lcom/eltechs/axs/proto/output/PODVisitor$Callback;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static visitCollection(Ljava/util/Collection;Lcom/eltechs/axs/proto/output/PODVisitor$Callback;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "*>;",
            "Lcom/eltechs/axs/proto/output/PODVisitor$Callback;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 45
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 46
    invoke-static {v0, p1}, Lcom/eltechs/axs/proto/output/PODVisitor;->visit(Ljava/lang/Object;Lcom/eltechs/axs/proto/output/PODVisitor$Callback;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private static visitFields(Ljava/lang/Object;Lcom/eltechs/axs/proto/output/PODVisitor$Callback;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 51
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 52
    const-class v1, Lcom/eltechs/axs/proto/output/POD;

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v1

    check-cast v1, Lcom/eltechs/axs/proto/output/POD;

    .line 54
    invoke-interface {v1}, Lcom/eltechs/axs/proto/output/POD;->value()[Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    array-length v3, v1

    move v4, v2

    :goto_0
    if-ge v4, v3, :cond_0

    aget-object v5, v1, v4

    .line 60
    :try_start_0
    invoke-virtual {v0, v5}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v6

    invoke-virtual {v6, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    .line 69
    invoke-static {v6, p1}, Lcom/eltechs/axs/proto/output/PODVisitor;->visit(Ljava/lang/Object;Lcom/eltechs/axs/proto/output/PODVisitor$Callback;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :catch_0
    const-string p1, "Classes tagged with @POD must contain only public fields, but the field %s::%s is not accessible."

    const/4 v0, 0x2

    .line 63
    new-array v0, v0, [Ljava/lang/Object;

    .line 65
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    aput-object p0, v0, v2

    const/4 p0, 0x1

    aput-object v5, v0, p0

    .line 63
    invoke-static {p1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Lcom/eltechs/axs/helpers/Assert;->isTrue(ZLjava/lang/String;)V

    return-void

    :cond_0
    return-void
.end method
