.class public Lcom/eltechs/axs/StrokeToKeyAdapter;
.super Ljava/lang/Object;
.source "StrokeToKeyAdapter.java"

# interfaces
.implements Lcom/eltechs/axs/StrokeEventListener;


# instance fields
.field private final keyCodeBottom:Lcom/eltechs/axs/KeyCodesX;

.field private final keyCodeLeft:Lcom/eltechs/axs/KeyCodesX;

.field private final keyCodeRight:Lcom/eltechs/axs/KeyCodesX;

.field private final keyCodeTop:Lcom/eltechs/axs/KeyCodesX;

.field private final keyEventReporter:Lcom/eltechs/axs/KeyEventReporter;


# direct methods
.method public constructor <init>(Lcom/eltechs/axs/KeyEventReporter;Lcom/eltechs/axs/KeyCodesX;Lcom/eltechs/axs/KeyCodesX;Lcom/eltechs/axs/KeyCodesX;Lcom/eltechs/axs/KeyCodesX;)V
    .locals 0

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput-object p1, p0, Lcom/eltechs/axs/StrokeToKeyAdapter;->keyEventReporter:Lcom/eltechs/axs/KeyEventReporter;

    .line 37
    iput-object p2, p0, Lcom/eltechs/axs/StrokeToKeyAdapter;->keyCodeTop:Lcom/eltechs/axs/KeyCodesX;

    .line 38
    iput-object p3, p0, Lcom/eltechs/axs/StrokeToKeyAdapter;->keyCodeBottom:Lcom/eltechs/axs/KeyCodesX;

    .line 39
    iput-object p4, p0, Lcom/eltechs/axs/StrokeToKeyAdapter;->keyCodeLeft:Lcom/eltechs/axs/KeyCodesX;

    .line 40
    iput-object p5, p0, Lcom/eltechs/axs/StrokeToKeyAdapter;->keyCodeRight:Lcom/eltechs/axs/KeyCodesX;

    return-void
.end method


# virtual methods
.method public strokeBottom(D)V
    .locals 2

    .line 58
    iget-object p1, p0, Lcom/eltechs/axs/StrokeToKeyAdapter;->keyEventReporter:Lcom/eltechs/axs/KeyEventReporter;

    const/4 p2, 0x1

    new-array p2, p2, [Lcom/eltechs/axs/KeyCodesX;

    iget-object v0, p0, Lcom/eltechs/axs/StrokeToKeyAdapter;->keyCodeBottom:Lcom/eltechs/axs/KeyCodesX;

    const/4 v1, 0x0

    aput-object v0, p2, v1

    invoke-virtual {p1, p2}, Lcom/eltechs/axs/KeyEventReporter;->reportKeys([Lcom/eltechs/axs/KeyCodesX;)V

    return-void
.end method

.method public strokeLeft(D)V
    .locals 2

    .line 64
    iget-object p1, p0, Lcom/eltechs/axs/StrokeToKeyAdapter;->keyEventReporter:Lcom/eltechs/axs/KeyEventReporter;

    const/4 p2, 0x1

    new-array p2, p2, [Lcom/eltechs/axs/KeyCodesX;

    iget-object v0, p0, Lcom/eltechs/axs/StrokeToKeyAdapter;->keyCodeLeft:Lcom/eltechs/axs/KeyCodesX;

    const/4 v1, 0x0

    aput-object v0, p2, v1

    invoke-virtual {p1, p2}, Lcom/eltechs/axs/KeyEventReporter;->reportKeys([Lcom/eltechs/axs/KeyCodesX;)V

    return-void
.end method

.method public strokeRight(D)V
    .locals 2

    .line 52
    iget-object p1, p0, Lcom/eltechs/axs/StrokeToKeyAdapter;->keyEventReporter:Lcom/eltechs/axs/KeyEventReporter;

    const/4 p2, 0x1

    new-array p2, p2, [Lcom/eltechs/axs/KeyCodesX;

    iget-object v0, p0, Lcom/eltechs/axs/StrokeToKeyAdapter;->keyCodeRight:Lcom/eltechs/axs/KeyCodesX;

    const/4 v1, 0x0

    aput-object v0, p2, v1

    invoke-virtual {p1, p2}, Lcom/eltechs/axs/KeyEventReporter;->reportKeys([Lcom/eltechs/axs/KeyCodesX;)V

    return-void
.end method

.method public strokeTop(D)V
    .locals 2

    .line 46
    iget-object p1, p0, Lcom/eltechs/axs/StrokeToKeyAdapter;->keyEventReporter:Lcom/eltechs/axs/KeyEventReporter;

    const/4 p2, 0x1

    new-array p2, p2, [Lcom/eltechs/axs/KeyCodesX;

    iget-object v0, p0, Lcom/eltechs/axs/StrokeToKeyAdapter;->keyCodeTop:Lcom/eltechs/axs/KeyCodesX;

    const/4 v1, 0x0

    aput-object v0, p2, v1

    invoke-virtual {p1, p2}, Lcom/eltechs/axs/KeyEventReporter;->reportKeys([Lcom/eltechs/axs/KeyCodesX;)V

    return-void
.end method
