.class final Lcom/facebook/b/bf;
.super Lcom/facebook/b/bb;
.source "SourceFile"


# instance fields
.field d:Ljava/lang/String;

.field e:Ljava/lang/String;

.field f:Ljava/lang/String;

.field g:Ljava/lang/String;

.field final synthetic h:Lcom/facebook/b/an;


# direct methods
.method constructor <init>(Lcom/facebook/b/an;Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 1212
    iput-object p1, p0, Lcom/facebook/b/bf;->h:Lcom/facebook/b/an;

    .line 1213
    invoke-direct {p0, p1, p2}, Lcom/facebook/b/bb;-><init>(Lcom/facebook/b/an;Ljava/lang/String;)V

    .line 1215
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1216
    const-string v1, "fields"

    const-string v2, "engagement.fields(count_string_with_like,count_string_without_like,social_sentence_with_like,social_sentence_without_like)"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1224
    new-instance v1, Lcom/facebook/Request;

    invoke-static {p1}, Lcom/facebook/b/an;->l(Lcom/facebook/b/an;)Lcom/facebook/by;

    move-result-object v2

    sget-object v3, Lcom/facebook/au;->GET:Lcom/facebook/au;

    invoke-direct {v1, v2, p2, v0, v3}, Lcom/facebook/Request;-><init>(Lcom/facebook/by;Ljava/lang/String;Landroid/os/Bundle;Lcom/facebook/au;)V

    invoke-virtual {p0, v1}, Lcom/facebook/b/bf;->a(Lcom/facebook/Request;)V

    .line 1225
    return-void
.end method


# virtual methods
.method protected final a(Lcom/facebook/ap;)V
    .locals 6

    .prologue
    .line 1240
    sget-object v0, Lcom/facebook/av;->REQUESTS:Lcom/facebook/av;

    invoke-static {}, Lcom/facebook/b/an;->i()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Error fetching engagement for object \'%s\' : %s"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/facebook/b/bf;->a:Ljava/lang/String;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    aput-object p1, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/facebook/b/bv;->a(Lcom/facebook/av;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1243
    iget-object v0, p0, Lcom/facebook/b/bf;->h:Lcom/facebook/b/an;

    const-string v1, "get_engagement"

    invoke-static {v0, v1, p1}, Lcom/facebook/b/an;->a(Lcom/facebook/b/an;Ljava/lang/String;Lcom/facebook/ap;)V

    .line 1244
    return-void
.end method

.method protected final a(Lcom/facebook/bx;)V
    .locals 2

    .prologue
    .line 1229
    invoke-virtual {p1}, Lcom/facebook/bx;->b()Lcom/facebook/c/c;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/b/cl;->b(Lcom/facebook/c/c;)Lorg/json/JSONObject;

    move-result-object v0

    .line 1230
    if-eqz v0, :cond_0

    .line 1231
    const-string v1, "count_string_with_like"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/facebook/b/bf;->d:Ljava/lang/String;

    .line 1232
    const-string v1, "count_string_without_like"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/facebook/b/bf;->e:Ljava/lang/String;

    .line 1233
    const-string v1, "social_sentence_with_like"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/facebook/b/bf;->f:Ljava/lang/String;

    .line 1234
    const-string v1, "social_sentence_without_like"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/b/bf;->g:Ljava/lang/String;

    .line 1236
    :cond_0
    return-void
.end method
