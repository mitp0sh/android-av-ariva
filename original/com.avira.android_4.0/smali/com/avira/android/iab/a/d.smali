.class final Lcom/avira/android/iab/a/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Z

.field final synthetic b:Ljava/util/List;

.field final synthetic c:Lcom/avira/android/iab/a/h;

.field final synthetic d:Landroid/os/Handler;

.field final synthetic e:Lcom/avira/android/iab/a/b;


# direct methods
.method constructor <init>(Lcom/avira/android/iab/a/b;Lcom/avira/android/iab/a/h;Landroid/os/Handler;)V
    .locals 1

    .prologue
    .line 752
    iput-object p1, p0, Lcom/avira/android/iab/a/d;->e:Lcom/avira/android/iab/a/b;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/avira/android/iab/a/d;->a:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/avira/android/iab/a/d;->b:Ljava/util/List;

    iput-object p2, p0, Lcom/avira/android/iab/a/d;->c:Lcom/avira/android/iab/a/h;

    iput-object p3, p0, Lcom/avira/android/iab/a/d;->d:Landroid/os/Handler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    .prologue
    .line 755
    new-instance v1, Lcom/avira/android/iab/a/j;

    const/4 v0, 0x0

    const-string v2, "Inventory refresh successful."

    invoke-direct {v1, v0, v2}, Lcom/avira/android/iab/a/j;-><init>(ILjava/lang/String;)V

    .line 756
    const/4 v0, 0x0

    .line 759
    :try_start_0
    iget-object v2, p0, Lcom/avira/android/iab/a/d;->e:Lcom/avira/android/iab/a/b;

    iget-boolean v3, p0, Lcom/avira/android/iab/a/d;->a:Z

    iget-object v4, p0, Lcom/avira/android/iab/a/d;->b:Ljava/util/List;

    invoke-virtual {v2, v3, v4}, Lcom/avira/android/iab/a/b;->a(ZLjava/util/List;)Lcom/avira/android/iab/a/i;
    :try_end_0
    .catch Lcom/avira/android/iab/a/a; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 766
    :goto_0
    iget-object v2, p0, Lcom/avira/android/iab/a/d;->e:Lcom/avira/android/iab/a/b;

    invoke-virtual {v2}, Lcom/avira/android/iab/a/b;->e()V

    .line 768
    iget-object v2, p0, Lcom/avira/android/iab/a/d;->e:Lcom/avira/android/iab/a/b;

    iget-boolean v2, v2, Lcom/avira/android/iab/a/b;->d:Z

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/avira/android/iab/a/d;->c:Lcom/avira/android/iab/a/h;

    if-eqz v2, :cond_0

    .line 772
    iget-object v2, p0, Lcom/avira/android/iab/a/d;->d:Landroid/os/Handler;

    new-instance v3, Lcom/avira/android/iab/a/e;

    invoke-direct {v3, p0, v1, v0}, Lcom/avira/android/iab/a/e;-><init>(Lcom/avira/android/iab/a/d;Lcom/avira/android/iab/a/j;Lcom/avira/android/iab/a/i;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 780
    :cond_0
    return-void

    .line 761
    :catch_0
    move-exception v1

    invoke-virtual {v1}, Lcom/avira/android/iab/a/a;->a()Lcom/avira/android/iab/a/j;

    move-result-object v1

    goto :goto_0
.end method
