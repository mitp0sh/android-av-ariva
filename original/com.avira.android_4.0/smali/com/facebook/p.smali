.class final Lcom/facebook/p;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final ENCODED_EVENTS_KEY:Ljava/lang/String; = "encoded_events"

.field public static final EVENT_COUNT_KEY:Ljava/lang/String; = "event_count"

.field public static final NUM_SKIPPED_KEY:Ljava/lang/String; = "num_skipped"


# instance fields
.field private a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/facebook/j;",
            ">;"
        }
    .end annotation
.end field

.field private b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/facebook/j;",
            ">;"
        }
    .end annotation
.end field

.field private c:I

.field private d:Lcom/facebook/b/a;

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;

.field private final g:I


# direct methods
.method public constructor <init>(Lcom/facebook/b/a;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 1065
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1052
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/facebook/p;->a:Ljava/util/List;

    .line 1053
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/facebook/p;->b:Ljava/util/List;

    .line 1063
    const/16 v0, 0x3e8

    iput v0, p0, Lcom/facebook/p;->g:I

    .line 1066
    iput-object p1, p0, Lcom/facebook/p;->d:Lcom/facebook/b/a;

    .line 1067
    iput-object p2, p0, Lcom/facebook/p;->e:Ljava/lang/String;

    .line 1068
    iput-object p3, p0, Lcom/facebook/p;->f:Ljava/lang/String;

    .line 1069
    return-void
.end method

.method private static a(Ljava/lang/String;)[B
    .locals 3

    .prologue
    .line 1177
    const/4 v0, 0x0

    .line 1179
    :try_start_0
    const-string v1, "UTF-8"

    invoke-virtual {p0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 1184
    :goto_0
    return-object v0

    .line 1180
    :catch_0
    move-exception v1

    .line 1182
    const-string v2, "Encoding exception: "

    invoke-static {v2, v1}, Lcom/facebook/b/cl;->a(Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_0
.end method


# virtual methods
.method public final declared-synchronized a()I
    .locals 1

    .prologue
    .line 1082
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/facebook/p;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final a(Lcom/facebook/Request;ZZZ)I
    .locals 5

    .prologue
    .line 1098
    monitor-enter p0

    .line 1099
    :try_start_0
    iget v1, p0, Lcom/facebook/p;->c:I

    .line 1102
    iget-object v0, p0, Lcom/facebook/p;->b:Ljava/util/List;

    iget-object v2, p0, Lcom/facebook/p;->a:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 1103
    iget-object v0, p0, Lcom/facebook/p;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 1105
    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2}, Lorg/json/JSONArray;-><init>()V

    .line 1106
    iget-object v0, p0, Lcom/facebook/p;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/j;

    .line 1107
    if-nez p2, :cond_1

    invoke-virtual {v0}, Lcom/facebook/j;->a()Z

    move-result v4

    if-nez v4, :cond_0

    .line 1108
    :cond_1
    invoke-virtual {v0}, Lcom/facebook/j;->b()Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v2, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 1115
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 1112
    :cond_2
    :try_start_1
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-nez v0, :cond_3

    .line 1113
    const/4 v0, 0x0

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1118
    :goto_1
    return v0

    .line 1115
    :cond_3
    monitor-exit p0

    .line 1117
    invoke-static {}, Lcom/facebook/c/d;->a()Lcom/facebook/c/c;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/c/c;->f()V

    iget v3, p0, Lcom/facebook/p;->c:I

    if-lez v3, :cond_4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    invoke-interface {v0}, Lcom/facebook/c/c;->f()V

    :cond_4
    if-eqz p3, :cond_5

    iget-object v1, p0, Lcom/facebook/p;->d:Lcom/facebook/b/a;

    iget-object v3, p0, Lcom/facebook/p;->f:Ljava/lang/String;

    invoke-static {v0, v1, v3, p4}, Lcom/facebook/b/cl;->a(Lcom/facebook/c/c;Lcom/facebook/b/a;Ljava/lang/String;Z)V

    :cond_5
    :try_start_2
    invoke-static {}, Lcom/facebook/c;->f()Landroid/content/Context;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/facebook/b/cl;->a(Lcom/facebook/c/c;Landroid/content/Context;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :goto_2
    iget-object v1, p0, Lcom/facebook/p;->e:Ljava/lang/String;

    invoke-interface {v0}, Lcom/facebook/c/c;->f()V

    invoke-virtual {p1, v0}, Lcom/facebook/Request;->a(Lcom/facebook/c/c;)V

    invoke-virtual {p1}, Lcom/facebook/Request;->c()Landroid/os/Bundle;

    move-result-object v0

    if-nez v0, :cond_6

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    :cond_6
    invoke-virtual {v2}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_7

    const-string v3, "custom_events_file"

    invoke-static {v1}, Lcom/facebook/p;->a(Ljava/lang/String;)[B

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    invoke-virtual {p1, v1}, Lcom/facebook/Request;->a(Ljava/lang/Object;)V

    :cond_7
    invoke-virtual {p1, v0}, Lcom/facebook/Request;->a(Landroid/os/Bundle;)V

    .line 1118
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v0

    goto :goto_1

    :catch_0
    move-exception v1

    goto :goto_2
.end method

.method public final declared-synchronized a(Lcom/facebook/j;)V
    .locals 2

    .prologue
    .line 1074
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/facebook/p;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iget-object v1, p0, Lcom/facebook/p;->b:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/2addr v0, v1

    const/16 v1, 0x3e8

    if-lt v0, v1, :cond_0

    .line 1075
    iget v0, p0, Lcom/facebook/p;->c:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/facebook/p;->c:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1079
    :goto_0
    monitor-exit p0

    return-void

    .line 1077
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/facebook/p;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1074
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized a(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/facebook/j;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1133
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/facebook/p;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1134
    monitor-exit p0

    return-void

    .line 1133
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized a(Z)V
    .locals 2

    .prologue
    .line 1086
    monitor-enter p0

    if-eqz p1, :cond_0

    .line 1087
    :try_start_0
    iget-object v0, p0, Lcom/facebook/p;->a:Ljava/util/List;

    iget-object v1, p0, Lcom/facebook/p;->b:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 1089
    :cond_0
    iget-object v0, p0, Lcom/facebook/p;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 1090
    const/4 v0, 0x0

    iput v0, p0, Lcom/facebook/p;->c:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1091
    monitor-exit p0

    return-void

    .line 1086
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized b()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/facebook/j;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1125
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/facebook/p;->a:Ljava/util/List;

    .line 1126
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/facebook/p;->a:Ljava/util/List;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1127
    monitor-exit p0

    return-object v0

    .line 1125
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
