.class public Lcom/eltechs/axs/StateButton;
.super Landroid/widget/Button;
.source "StateButton.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# static fields
.field private static final doubleClickMaxIntervalMs:J = 0xc8L


# instance fields
.field private buttonEventReporter:Lcom/eltechs/axs/ButtonEventReporter;

.field private lastTouchTimestamp:J

.field private persistMode:Z

.field private persistPressed:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/eltechs/axs/ButtonEventReporter;ZIILjava/lang/String;)V
    .locals 0

    .line 19
    invoke-direct {p0, p1}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    .line 14
    iput-boolean p1, p0, Lcom/eltechs/axs/StateButton;->persistMode:Z

    .line 15
    iput-boolean p1, p0, Lcom/eltechs/axs/StateButton;->persistPressed:Z

    .line 20
    iput-object p2, p0, Lcom/eltechs/axs/StateButton;->buttonEventReporter:Lcom/eltechs/axs/ButtonEventReporter;

    .line 21
    iput-boolean p3, p0, Lcom/eltechs/axs/StateButton;->persistMode:Z

    .line 22
    new-instance p1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {p1, p4, p5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, p1}, Lcom/eltechs/axs/StateButton;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/4 p1, 0x2

    const/high16 p2, 0x41400000    # 12.0f

    .line 23
    invoke-virtual {p0, p1, p2}, Lcom/eltechs/axs/StateButton;->setTextSize(IF)V

    .line 24
    invoke-virtual {p0, p6}, Lcom/eltechs/axs/StateButton;->setText(Ljava/lang/CharSequence;)V

    const p1, -0x222223

    .line 25
    invoke-virtual {p0, p1}, Lcom/eltechs/axs/StateButton;->setTextColor(I)V

    const p1, 0x7f0800c6

    .line 26
    invoke-virtual {p0, p1}, Lcom/eltechs/axs/StateButton;->setBackgroundResource(I)V

    .line 27
    invoke-virtual {p0, p0}, Lcom/eltechs/axs/StateButton;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    return-void
.end method

.method private pressed()V
    .locals 1

    const v0, 0x7f0800c7

    .line 32
    invoke-virtual {p0, v0}, Lcom/eltechs/axs/StateButton;->setBackgroundResource(I)V

    .line 33
    iget-object v0, p0, Lcom/eltechs/axs/StateButton;->buttonEventReporter:Lcom/eltechs/axs/ButtonEventReporter;

    if-eqz v0, :cond_0

    .line 34
    invoke-virtual {v0}, Lcom/eltechs/axs/ButtonEventReporter;->pressed()V

    :cond_0
    return-void
.end method

.method private released()V
    .locals 1

    const v0, 0x7f0800c6

    .line 39
    invoke-virtual {p0, v0}, Lcom/eltechs/axs/StateButton;->setBackgroundResource(I)V

    .line 40
    iget-object v0, p0, Lcom/eltechs/axs/StateButton;->buttonEventReporter:Lcom/eltechs/axs/ButtonEventReporter;

    if-eqz v0, :cond_0

    .line 41
    invoke-virtual {v0}, Lcom/eltechs/axs/ButtonEventReporter;->released()V

    :cond_0
    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 5

    .line 45
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    const/4 p2, 0x0

    const/4 v0, 0x1

    if-eqz p1, :cond_2

    if-eq p1, v0, :cond_0

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 60
    :cond_0
    iget-boolean p1, p0, Lcom/eltechs/axs/StateButton;->persistPressed:Z

    if-nez p1, :cond_1

    .line 61
    invoke-direct {p0}, Lcom/eltechs/axs/StateButton;->released()V

    .line 63
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/eltechs/axs/StateButton;->lastTouchTimestamp:J

    goto :goto_0

    .line 48
    :cond_2
    iget-boolean p1, p0, Lcom/eltechs/axs/StateButton;->persistPressed:Z

    if-nez p1, :cond_4

    .line 49
    iget-boolean p1, p0, Lcom/eltechs/axs/StateButton;->persistMode:Z

    if-eqz p1, :cond_3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iget-wide v3, p0, Lcom/eltechs/axs/StateButton;->lastTouchTimestamp:J

    sub-long/2addr v1, v3

    const-wide/16 v3, 0xc8

    cmp-long p1, v1, v3

    if-gez p1, :cond_3

    .line 50
    iput-boolean v0, p0, Lcom/eltechs/axs/StateButton;->persistPressed:Z

    .line 52
    :cond_3
    invoke-direct {p0}, Lcom/eltechs/axs/StateButton;->pressed()V

    goto :goto_0

    .line 54
    :cond_4
    iput-boolean p2, p0, Lcom/eltechs/axs/StateButton;->persistPressed:Z

    :goto_0
    return p2
.end method
