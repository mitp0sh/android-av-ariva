.class final Lcom/facebook/b/at;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Z

.field final synthetic b:Landroid/content/Context;

.field final synthetic c:Lcom/facebook/b/as;


# direct methods
.method constructor <init>(Lcom/facebook/b/as;ZLandroid/content/Context;)V
    .locals 0

    .prologue
    .line 292
    iput-object p1, p0, Lcom/facebook/b/at;->c:Lcom/facebook/b/as;

    iput-boolean p2, p0, Lcom/facebook/b/at;->a:Z

    iput-object p3, p0, Lcom/facebook/b/at;->b:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 301
    iget-boolean v0, p0, Lcom/facebook/b/at;->a:Z

    if-eqz v0, :cond_0

    .line 302
    invoke-static {}, Lcom/facebook/b/an;->e()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    rem-int/lit16 v0, v0, 0x3e8

    invoke-static {v0}, Lcom/facebook/b/an;->a(I)I

    .line 303
    iget-object v0, p0, Lcom/facebook/b/at;->b:Landroid/content/Context;

    const-string v1, "com.facebook.LikeActionController.CONTROLLER_STORE_KEY"

    invoke-virtual {v0, v1, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "OBJECT_SUFFIX"

    invoke-static {}, Lcom/facebook/b/an;->e()I

    move-result v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 310
    invoke-static {}, Lcom/facebook/b/an;->f()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    .line 311
    invoke-static {}, Lcom/facebook/b/an;->g()Lcom/facebook/b/o;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/b/o;->a()V

    .line 314
    :cond_0
    iget-object v0, p0, Lcom/facebook/b/at;->b:Landroid/content/Context;

    const-string v1, "com.facebook.sdk.LikeActionController.DID_RESET"

    invoke-static {v0, v1}, Lcom/facebook/b/an;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 315
    invoke-static {v3}, Lcom/facebook/b/an;->a(Z)Z

    .line 316
    return-void
.end method
