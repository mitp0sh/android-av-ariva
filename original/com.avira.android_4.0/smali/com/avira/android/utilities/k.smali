.class public abstract Lcom/avira/android/utilities/k;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field private a:J

.field b:J


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    const-wide/16 v0, 0x3e8

    iput-wide v0, p0, Lcom/avira/android/utilities/k;->a:J

    .line 11
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/avira/android/utilities/k;->b:J

    return-void
.end method


# virtual methods
.method public abstract a(I)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 16
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 17
    iget-wide v2, p0, Lcom/avira/android/utilities/k;->b:J

    sub-long v2, v0, v2

    iget-wide v4, p0, Lcom/avira/android/utilities/k;->a:J

    cmp-long v2, v2, v4

    if-lez v2, :cond_0

    .line 20
    iput-wide v0, p0, Lcom/avira/android/utilities/k;->b:J

    .line 21
    invoke-virtual {p0, p3}, Lcom/avira/android/utilities/k;->a(I)V

    .line 26
    :cond_0
    return-void
.end method
