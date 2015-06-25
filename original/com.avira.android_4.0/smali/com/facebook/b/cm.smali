.class final Lcom/facebook/b/cm;
.super Landroid/os/AsyncTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Lcom/facebook/c/c;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Landroid/content/Context;

.field final synthetic c:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 627
    iput-object p1, p0, Lcom/facebook/b/cm;->a:Ljava/lang/String;

    iput-object p2, p0, Lcom/facebook/b/cm;->b:Landroid/content/Context;

    iput-object p3, p0, Lcom/facebook/b/cm;->c:Ljava/lang/String;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected final synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 627
    iget-object v0, p0, Lcom/facebook/b/cm;->a:Ljava/lang/String;

    invoke-static {v0}, Lcom/facebook/b/cl;->e(Ljava/lang/String;)Lcom/facebook/c/c;

    move-result-object v0

    return-object v0
.end method

.method protected final synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 4

    .prologue
    .line 627
    check-cast p1, Lcom/facebook/c/c;

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lcom/facebook/c/c;->d()Lorg/json/JSONObject;

    move-result-object v0

    iget-object v1, p0, Lcom/facebook/b/cm;->a:Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/facebook/b/cl;->a(Ljava/lang/String;Lorg/json/JSONObject;)Lcom/facebook/b/co;

    iget-object v1, p0, Lcom/facebook/b/cm;->b:Landroid/content/Context;

    const-string v2, "com.facebook.internal.preferences.APP_SETTINGS"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    iget-object v2, p0, Lcom/facebook/b/cm;->c:Ljava/lang/String;

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_0
    invoke-static {}, Lcom/facebook/b/cl;->b()Landroid/os/AsyncTask;

    return-void
.end method
