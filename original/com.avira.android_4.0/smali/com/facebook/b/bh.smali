.class final Lcom/facebook/b/bh;
.super Lcom/facebook/b/bb;
.source "SourceFile"


# instance fields
.field d:Z

.field e:Ljava/lang/String;

.field final synthetic f:Lcom/facebook/b/an;


# direct methods
.method constructor <init>(Lcom/facebook/b/an;Ljava/lang/String;)V
    .locals 5

    .prologue
    .line 1168
    iput-object p1, p0, Lcom/facebook/b/bh;->f:Lcom/facebook/b/an;

    .line 1169
    invoke-direct {p0, p1, p2}, Lcom/facebook/b/bb;-><init>(Lcom/facebook/b/an;Ljava/lang/String;)V

    .line 1171
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1172
    const-string v1, "fields"

    const-string v2, "id,application"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1173
    const-string v1, "object"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1175
    new-instance v1, Lcom/facebook/Request;

    invoke-static {p1}, Lcom/facebook/b/an;->l(Lcom/facebook/b/an;)Lcom/facebook/by;

    move-result-object v2

    const-string v3, "me/og.likes"

    sget-object v4, Lcom/facebook/au;->GET:Lcom/facebook/au;

    invoke-direct {v1, v2, v3, v0, v4}, Lcom/facebook/Request;-><init>(Lcom/facebook/by;Ljava/lang/String;Landroid/os/Bundle;Lcom/facebook/au;)V

    invoke-virtual {p0, v1}, Lcom/facebook/b/bh;->a(Lcom/facebook/Request;)V

    .line 1176
    return-void
.end method


# virtual methods
.method protected final a(Lcom/facebook/ap;)V
    .locals 6

    .prologue
    .line 1199
    sget-object v0, Lcom/facebook/av;->REQUESTS:Lcom/facebook/av;

    invoke-static {}, Lcom/facebook/b/an;->i()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Error fetching like status for object \'%s\' : %s"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/facebook/b/bh;->a:Ljava/lang/String;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    aput-object p1, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/facebook/b/bv;->a(Lcom/facebook/av;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1202
    iget-object v0, p0, Lcom/facebook/b/bh;->f:Lcom/facebook/b/an;

    const-string v1, "get_og_object_like"

    invoke-static {v0, v1, p1}, Lcom/facebook/b/an;->a(Lcom/facebook/b/an;Ljava/lang/String;Lcom/facebook/ap;)V

    .line 1203
    return-void
.end method

.method protected final a(Lcom/facebook/bx;)V
    .locals 6

    .prologue
    .line 1180
    invoke-virtual {p1}, Lcom/facebook/bx;->b()Lcom/facebook/c/c;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/b/cl;->c(Lcom/facebook/c/c;)Lorg/json/JSONArray;

    move-result-object v1

    .line 1181
    if-eqz v1, :cond_1

    .line 1182
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 1183
    invoke-virtual {v1, v0}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    .line 1184
    if-eqz v2, :cond_0

    .line 1185
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/facebook/b/bh;->d:Z

    .line 1186
    const-string v3, "application"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    .line 1187
    if-eqz v3, :cond_0

    .line 1188
    iget-object v4, p0, Lcom/facebook/b/bh;->f:Lcom/facebook/b/an;

    invoke-static {v4}, Lcom/facebook/b/an;->l(Lcom/facebook/b/an;)Lcom/facebook/by;

    move-result-object v4

    invoke-virtual {v4}, Lcom/facebook/by;->d()Ljava/lang/String;

    move-result-object v4

    const-string v5, "id"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Lcom/facebook/b/cl;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1189
    const-string v3, "id"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/facebook/b/bh;->e:Ljava/lang/String;

    .line 1182
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1195
    :cond_1
    return-void
.end method
