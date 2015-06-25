.class public final Lcom/facebook/ay;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/facebook/bc;


# static fields
.field static final ATTACHMENTS_DIR_NAME:Ljava/lang/String; = "com.facebook.NativeAppCallAttachmentStore.files"

.field private static final TAG:Ljava/lang/String;

.field private static a:Ljava/io/File;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 45
    const-class v0, Lcom/facebook/ay;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/facebook/ay;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 154
    return-void
.end method

.method private static declared-synchronized a(Landroid/content/Context;)Ljava/io/File;
    .locals 4

    .prologue
    .line 186
    const-class v1, Lcom/facebook/ay;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/facebook/ay;->a:Ljava/io/File;

    if-nez v0, :cond_0

    .line 187
    new-instance v0, Ljava/io/File;

    invoke-virtual {p0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v2

    const-string v3, "com.facebook.NativeAppCallAttachmentStore.files"

    invoke-direct {v0, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    sput-object v0, Lcom/facebook/ay;->a:Ljava/io/File;

    .line 189
    :cond_0
    sget-object v0, Lcom/facebook/ay;->a:Ljava/io/File;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 186
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private static a(Ljava/util/UUID;Ljava/lang/String;Z)Ljava/io/File;
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 211
    invoke-static {p0, p2}, Lcom/facebook/ay;->a(Ljava/util/UUID;Z)Ljava/io/File;

    move-result-object v2

    .line 212
    if-nez v2, :cond_0

    .line 219
    :goto_0
    return-object v0

    .line 217
    :cond_0
    :try_start_0
    new-instance v1, Ljava/io/File;

    const-string v3, "UTF-8"

    invoke-static {p1, v3}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    goto :goto_0

    .line 219
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private static a(Ljava/util/UUID;Z)Ljava/io/File;
    .locals 3

    .prologue
    .line 199
    sget-object v0, Lcom/facebook/ay;->a:Ljava/io/File;

    if-nez v0, :cond_1

    .line 200
    const/4 v0, 0x0

    .line 207
    :cond_0
    :goto_0
    return-object v0

    .line 203
    :cond_1
    new-instance v0, Ljava/io/File;

    sget-object v1, Lcom/facebook/ay;->a:Ljava/io/File;

    invoke-virtual {p0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 204
    if-eqz p1, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    .line 205
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    goto :goto_0
.end method

.method private static a(Landroid/content/Context;Ljava/util/UUID;Ljava/util/Map;Lcom/facebook/bb;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/content/Context;",
            "Ljava/util/UUID;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "TT;>;",
            "Lcom/facebook/bb",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 117
    invoke-interface {p2}, Ljava/util/Map;->size()I

    move-result v1

    if-nez v1, :cond_1

    .line 150
    :cond_0
    return-void

    .line 122
    :cond_1
    sget-object v1, Lcom/facebook/ay;->a:Ljava/io/File;

    if-nez v1, :cond_2

    .line 123
    invoke-static {p0}, Lcom/facebook/ay;->a(Landroid/content/Context;)Ljava/io/File;

    move-result-object v1

    invoke-static {v1}, Lcom/facebook/b/cl;->a(Ljava/io/File;)V

    .line 126
    :cond_2
    invoke-static {p0}, Lcom/facebook/ay;->a(Landroid/content/Context;)Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    .line 128
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 131
    :try_start_0
    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Ljava/util/Map$Entry;

    move-object v2, v0

    .line 132
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 133
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    .line 135
    const/4 v5, 0x1

    invoke-static {p1, v1, v5}, Lcom/facebook/ay;->a(Ljava/util/UUID;Ljava/lang/String;Z)Ljava/io/File;

    move-result-object v1

    .line 136
    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 138
    invoke-interface {p3, v2, v1}, Lcom/facebook/bb;->a(Ljava/lang/Object;Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 140
    :catch_0
    move-exception v1

    move-object v2, v1

    .line 141
    sget-object v1, Lcom/facebook/ay;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Got unexpected exception:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 142
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/io/File;

    .line 144
    :try_start_1
    invoke-virtual {v1}, Ljava/io/File;->delete()Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    .line 148
    :catch_1
    move-exception v1

    goto :goto_1

    .line 149
    :cond_3
    new-instance v1, Lcom/facebook/am;

    invoke-direct {v1, v2}, Lcom/facebook/am;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public static a(Ljava/util/UUID;)V
    .locals 1

    .prologue
    .line 165
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/facebook/ay;->a(Ljava/util/UUID;Z)Ljava/io/File;

    move-result-object v0

    .line 166
    invoke-static {v0}, Lcom/facebook/b/cl;->a(Ljava/io/File;)V

    .line 167
    return-void
.end method


# virtual methods
.method public final a(Ljava/util/UUID;Ljava/lang/String;)Ljava/io/File;
    .locals 1

    .prologue
    .line 171
    invoke-static {p2}, Lcom/facebook/b/cl;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    if-nez p1, :cond_1

    .line 173
    :cond_0
    new-instance v0, Ljava/io/FileNotFoundException;

    invoke-direct {v0}, Ljava/io/FileNotFoundException;-><init>()V

    throw v0

    .line 177
    :cond_1
    const/4 v0, 0x0

    :try_start_0
    invoke-static {p1, p2, v0}, Lcom/facebook/ay;->a(Ljava/util/UUID;Ljava/lang/String;Z)Ljava/io/File;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    .line 181
    :catch_0
    move-exception v0

    new-instance v0, Ljava/io/FileNotFoundException;

    invoke-direct {v0}, Ljava/io/FileNotFoundException;-><init>()V

    throw v0
.end method

.method public final a(Landroid/content/Context;Ljava/util/UUID;Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/UUID;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Landroid/graphics/Bitmap;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 60
    const-string v0, "context"

    invoke-static {p1, v0}, Lcom/facebook/b/cp;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 61
    const-string v0, "callId"

    invoke-static {p2, v0}, Lcom/facebook/b/cp;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 62
    invoke-interface {p3}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    const-string v1, "imageAttachments"

    invoke-static {v0, v1}, Lcom/facebook/b/cp;->a(Ljava/util/Collection;Ljava/lang/String;)V

    .line 63
    invoke-interface {p3}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    const-string v1, "imageAttachments"

    invoke-static {v0, v1}, Lcom/facebook/b/cp;->b(Ljava/util/Collection;Ljava/lang/String;)V

    .line 65
    new-instance v0, Lcom/facebook/az;

    invoke-direct {v0, p0}, Lcom/facebook/az;-><init>(Lcom/facebook/ay;)V

    invoke-static {p1, p2, p3, v0}, Lcom/facebook/ay;->a(Landroid/content/Context;Ljava/util/UUID;Ljava/util/Map;Lcom/facebook/bb;)V

    .line 76
    return-void
.end method

.method public final b(Landroid/content/Context;Ljava/util/UUID;Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/UUID;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/io/File;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 89
    const-string v0, "context"

    invoke-static {p1, v0}, Lcom/facebook/b/cp;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 90
    const-string v0, "callId"

    invoke-static {p2, v0}, Lcom/facebook/b/cp;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 91
    invoke-interface {p3}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    const-string v1, "imageAttachmentFiles"

    invoke-static {v0, v1}, Lcom/facebook/b/cp;->a(Ljava/util/Collection;Ljava/lang/String;)V

    .line 92
    invoke-interface {p3}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    const-string v1, "imageAttachmentFiles"

    invoke-static {v0, v1}, Lcom/facebook/b/cp;->b(Ljava/util/Collection;Ljava/lang/String;)V

    .line 94
    new-instance v0, Lcom/facebook/ba;

    invoke-direct {v0, p0}, Lcom/facebook/ba;-><init>(Lcom/facebook/ay;)V

    invoke-static {p1, p2, p3, v0}, Lcom/facebook/ay;->a(Landroid/content/Context;Ljava/util/UUID;Ljava/util/Map;Lcom/facebook/bb;)V

    .line 113
    return-void
.end method
