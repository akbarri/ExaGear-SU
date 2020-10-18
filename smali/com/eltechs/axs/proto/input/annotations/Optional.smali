.class public interface abstract annotation Lcom/eltechs/axs/proto/input/annotations/Optional;
.super Ljava/lang/Object;
.source "Optional.java"

# interfaces
.implements Ljava/lang/annotation/Annotation;


# annotations
.annotation system Ldalvik/annotation/AnnotationDefault;
    value = .subannotation Lcom/eltechs/axs/proto/input/annotations/Optional;
        mask = "mask"
    .end subannotation
.end annotation

.annotation runtime Ljava/lang/annotation/Retention;
    value = .enum Ljava/lang/annotation/RetentionPolicy;->RUNTIME:Ljava/lang/annotation/RetentionPolicy;
.end annotation

.annotation runtime Ljava/lang/annotation/Target;
    value = {
        .enum Ljava/lang/annotation/ElementType;->PARAMETER:Ljava/lang/annotation/ElementType;
    }
.end annotation


# virtual methods
.method public abstract bit()Ljava/lang/String;
.end method

.method public abstract mask()Ljava/lang/String;
.end method
