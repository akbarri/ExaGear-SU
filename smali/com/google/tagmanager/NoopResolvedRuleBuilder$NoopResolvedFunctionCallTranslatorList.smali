.class public Lcom/google/tagmanager/NoopResolvedRuleBuilder$NoopResolvedFunctionCallTranslatorList;
.super Ljava/lang/Object;
.source "NoopResolvedRuleBuilder.java"

# interfaces
.implements Lcom/google/tagmanager/ResolvedFunctionCallTranslatorList;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/tagmanager/NoopResolvedRuleBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "NoopResolvedFunctionCallTranslatorList"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/tagmanager/NoopResolvedRuleBuilder;


# direct methods
.method public constructor <init>(Lcom/google/tagmanager/NoopResolvedRuleBuilder;)V
    .locals 0

    .line 52
    iput-object p1, p0, Lcom/google/tagmanager/NoopResolvedRuleBuilder$NoopResolvedFunctionCallTranslatorList;->this$0:Lcom/google/tagmanager/NoopResolvedRuleBuilder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public translateAndAddAll(Ljava/util/List;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/google/tagmanager/ResourceUtil$ExpandedFunctionCall;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    return-void
.end method
