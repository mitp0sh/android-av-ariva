.class final Lcom/mixpanel/android/mpmetrics/z;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/mixpanel/android/mpmetrics/j;


# instance fields
.field final synthetic a:Lcom/mixpanel/android/mpmetrics/ap;

.field final synthetic b:Lcom/mixpanel/android/mpmetrics/y;


# direct methods
.method constructor <init>(Lcom/mixpanel/android/mpmetrics/y;Lcom/mixpanel/android/mpmetrics/ap;)V
    .locals 0

    .prologue
    .line 965
    iput-object p1, p0, Lcom/mixpanel/android/mpmetrics/z;->b:Lcom/mixpanel/android/mpmetrics/y;

    iput-object p2, p0, Lcom/mixpanel/android/mpmetrics/z;->a:Lcom/mixpanel/android/mpmetrics/ap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/graphics/Bitmap;I)V
    .locals 3

    .prologue
    .line 968
    iget-object v0, p0, Lcom/mixpanel/android/mpmetrics/z;->b:Lcom/mixpanel/android/mpmetrics/y;

    iget-object v0, v0, Lcom/mixpanel/android/mpmetrics/y;->c:Lcom/mixpanel/android/mpmetrics/w;

    iget-object v0, v0, Lcom/mixpanel/android/mpmetrics/w;->a:Lcom/mixpanel/android/mpmetrics/r;

    invoke-static {v0}, Lcom/mixpanel/android/mpmetrics/r;->e(Lcom/mixpanel/android/mpmetrics/r;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 969
    :try_start_0
    iget-object v0, p0, Lcom/mixpanel/android/mpmetrics/z;->b:Lcom/mixpanel/android/mpmetrics/y;

    iget-object v0, v0, Lcom/mixpanel/android/mpmetrics/y;->c:Lcom/mixpanel/android/mpmetrics/w;

    iget-object v0, v0, Lcom/mixpanel/android/mpmetrics/w;->a:Lcom/mixpanel/android/mpmetrics/r;

    invoke-static {v0, p1}, Lcom/mixpanel/android/mpmetrics/r;->a(Lcom/mixpanel/android/mpmetrics/r;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    .line 970
    iget-object v0, p0, Lcom/mixpanel/android/mpmetrics/z;->b:Lcom/mixpanel/android/mpmetrics/y;

    iget-object v0, v0, Lcom/mixpanel/android/mpmetrics/y;->c:Lcom/mixpanel/android/mpmetrics/w;

    iget-object v0, v0, Lcom/mixpanel/android/mpmetrics/w;->a:Lcom/mixpanel/android/mpmetrics/r;

    invoke-static {v0, p2}, Lcom/mixpanel/android/mpmetrics/r;->a(Lcom/mixpanel/android/mpmetrics/r;I)I

    .line 971
    iget-object v0, p0, Lcom/mixpanel/android/mpmetrics/z;->b:Lcom/mixpanel/android/mpmetrics/y;

    iget-object v0, v0, Lcom/mixpanel/android/mpmetrics/y;->c:Lcom/mixpanel/android/mpmetrics/w;

    iget-object v0, v0, Lcom/mixpanel/android/mpmetrics/w;->a:Lcom/mixpanel/android/mpmetrics/r;

    iget-object v2, p0, Lcom/mixpanel/android/mpmetrics/z;->b:Lcom/mixpanel/android/mpmetrics/y;

    iget-object v2, v2, Lcom/mixpanel/android/mpmetrics/y;->a:Landroid/app/Activity;

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    invoke-static {v0, v2}, Lcom/mixpanel/android/mpmetrics/r;->b(Lcom/mixpanel/android/mpmetrics/r;I)I

    .line 972
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 973
    iget-object v0, p0, Lcom/mixpanel/android/mpmetrics/z;->b:Lcom/mixpanel/android/mpmetrics/y;

    iget-object v0, v0, Lcom/mixpanel/android/mpmetrics/y;->b:Lcom/mixpanel/android/mpmetrics/at;

    iget-object v1, p0, Lcom/mixpanel/android/mpmetrics/z;->a:Lcom/mixpanel/android/mpmetrics/ap;

    invoke-interface {v0, v1}, Lcom/mixpanel/android/mpmetrics/at;->a(Lcom/mixpanel/android/mpmetrics/ap;)V

    .line 974
    return-void

    .line 972
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method
