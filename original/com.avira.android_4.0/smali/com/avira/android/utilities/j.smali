.class public abstract Lcom/avira/android/utilities/j;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private a:J

.field b:J


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    const-wide/16 v0, 0x3e8

    iput-wide v0, p0, Lcom/avira/android/utilities/j;->a:J

    .line 10
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/avira/android/utilities/j;->b:J

    return-void
.end method


# virtual methods
.method public abstract a(Landroid/view/View;)V
.end method

.method public onClick(Landroid/view/View;)V
    .locals 6

    .prologue
    .line 16
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 17
    iget-wide v2, p0, Lcom/avira/android/utilities/j;->b:J

    sub-long v2, v0, v2

    iget-wide v4, p0, Lcom/avira/android/utilities/j;->a:J

    cmp-long v2, v2, v4

    if-lez v2, :cond_0

    .line 20
    iput-wide v0, p0, Lcom/avira/android/utilities/j;->b:J

    .line 21
    invoke-virtual {p0, p1}, Lcom/avira/android/utilities/j;->a(Landroid/view/View;)V

    .line 26
    :cond_0
    return-void
.end method
