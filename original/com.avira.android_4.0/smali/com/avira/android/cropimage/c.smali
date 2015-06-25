.class public final Lcom/avira/android/cropimage/c;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String; = "BitmapManager"

.field private static b:Lcom/avira/android/cropimage/c;


# instance fields
.field private final a:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap",
            "<",
            "Ljava/lang/Thread;",
            "Lcom/avira/android/cropimage/e;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 72
    const/4 v0, 0x0

    sput-object v0, Lcom/avira/android/cropimage/c;->b:Lcom/avira/android/cropimage/c;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    iput-object v0, p0, Lcom/avira/android/cropimage/c;->a:Ljava/util/WeakHashMap;

    .line 76
    return-void
.end method

.method public static declared-synchronized a()Lcom/avira/android/cropimage/c;
    .locals 2

    .prologue
    .line 197
    const-class v1, Lcom/avira/android/cropimage/c;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/avira/android/cropimage/c;->b:Lcom/avira/android/cropimage/c;

    if-nez v0, :cond_0

    .line 199
    new-instance v0, Lcom/avira/android/cropimage/c;

    invoke-direct {v0}, Lcom/avira/android/cropimage/c;-><init>()V

    sput-object v0, Lcom/avira/android/cropimage/c;->b:Lcom/avira/android/cropimage/c;

    .line 201
    :cond_0
    sget-object v0, Lcom/avira/android/cropimage/c;->b:Lcom/avira/android/cropimage/c;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 197
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private declared-synchronized a(Ljava/lang/Thread;)Lcom/avira/android/cropimage/e;
    .locals 2

    .prologue
    .line 83
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/avira/android/cropimage/c;->a:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/avira/android/cropimage/e;

    .line 84
    if-nez v0, :cond_0

    .line 86
    new-instance v0, Lcom/avira/android/cropimage/e;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/avira/android/cropimage/e;-><init>(B)V

    .line 87
    iget-object v1, p0, Lcom/avira/android/cropimage/c;->a:Ljava/util/WeakHashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 89
    :cond_0
    monitor-exit p0

    return-object v0

    .line 83
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized a(Ljava/lang/Thread;Landroid/graphics/BitmapFactory$Options;)V
    .locals 1

    .prologue
    .line 97
    monitor-enter p0

    :try_start_0
    invoke-direct {p0, p1}, Lcom/avira/android/cropimage/c;->a(Ljava/lang/Thread;)Lcom/avira/android/cropimage/e;

    move-result-object v0

    iput-object p2, v0, Lcom/avira/android/cropimage/e;->b:Landroid/graphics/BitmapFactory$Options;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 98
    monitor-exit p0

    return-void

    .line 97
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized b(Ljava/lang/Thread;)V
    .locals 2

    .prologue
    .line 102
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/avira/android/cropimage/c;->a:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/avira/android/cropimage/e;

    .line 103
    const/4 v1, 0x0

    iput-object v1, v0, Lcom/avira/android/cropimage/e;->b:Landroid/graphics/BitmapFactory$Options;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 104
    monitor-exit p0

    return-void

    .line 102
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized c(Ljava/lang/Thread;)Z
    .locals 3

    .prologue
    const/4 v1, 0x1

    .line 111
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/avira/android/cropimage/c;->a:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/avira/android/cropimage/e;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 112
    if-nez v0, :cond_0

    move v0, v1

    .line 119
    :goto_0
    monitor-exit p0

    return v0

    .line 118
    :cond_0
    :try_start_1
    iget-object v0, v0, Lcom/avira/android/cropimage/e;->a:Lcom/avira/android/cropimage/d;

    sget-object v2, Lcom/avira/android/cropimage/d;->CANCEL:Lcom/avira/android/cropimage/d;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eq v0, v2, :cond_1

    move v0, v1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 119
    goto :goto_0

    .line 111
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public final a(Landroid/content/ContentResolver;J)Landroid/graphics/Bitmap;
    .locals 10

    .prologue
    const/4 v0, 0x0

    .line 161
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    .line 162
    invoke-direct {p0, v1}, Lcom/avira/android/cropimage/c;->a(Ljava/lang/Thread;)Lcom/avira/android/cropimage/e;

    move-result-object v8

    .line 164
    invoke-direct {p0, v1}, Lcom/avira/android/cropimage/c;->c(Ljava/lang/Thread;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 166
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Thread "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is not allowed to decode."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 176
    :goto_0
    return-object v0

    .line 172
    :cond_0
    :try_start_0
    monitor-enter v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 174
    const/4 v0, 0x1

    :try_start_1
    iput-boolean v0, v8, Lcom/avira/android/cropimage/e;->c:Z

    .line 175
    monitor-exit v8
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 176
    :try_start_2
    invoke-virtual {v1}, Ljava/lang/Thread;->getId()J

    move-result-wide v4

    const/4 v6, 0x1

    const/4 v7, 0x0

    move-object v1, p1

    move-wide v2, p2

    invoke-static/range {v1 .. v7}, Landroid/provider/MediaStore$Images$Thumbnails;->getThumbnail(Landroid/content/ContentResolver;JJILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    move-result-object v0

    .line 187
    monitor-enter v8

    .line 189
    const/4 v1, 0x0

    :try_start_3
    iput-boolean v1, v8, Lcom/avira/android/cropimage/e;->c:Z

    .line 190
    invoke-virtual {v8}, Ljava/lang/Object;->notifyAll()V

    .line 191
    monitor-exit v8
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v8

    throw v0

    .line 175
    :catchall_1
    move-exception v0

    :try_start_4
    monitor-exit v8

    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 187
    :catchall_2
    move-exception v0

    monitor-enter v8

    .line 189
    const/4 v1, 0x0

    :try_start_5
    iput-boolean v1, v8, Lcom/avira/android/cropimage/e;->c:Z

    .line 190
    invoke-virtual {v8}, Ljava/lang/Object;->notifyAll()V

    .line 191
    monitor-exit v8
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    .line 187
    throw v0

    .line 191
    :catchall_3
    move-exception v0

    monitor-exit v8

    throw v0
.end method

.method public final a(Ljava/io/FileDescriptor;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 209
    iget-boolean v1, p2, Landroid/graphics/BitmapFactory$Options;->mCancel:Z

    if-eqz v1, :cond_0

    .line 225
    :goto_0
    return-object v0

    .line 214
    :cond_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    .line 215
    invoke-direct {p0, v1}, Lcom/avira/android/cropimage/c;->c(Ljava/lang/Thread;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 217
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Thread "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is not allowed to decode."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    goto :goto_0

    .line 221
    :cond_1
    invoke-direct {p0, v1, p2}, Lcom/avira/android/cropimage/c;->a(Ljava/lang/Thread;Landroid/graphics/BitmapFactory$Options;)V

    .line 222
    invoke-static {p1, v0, p2}, Landroid/graphics/BitmapFactory;->decodeFileDescriptor(Ljava/io/FileDescriptor;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 224
    invoke-direct {p0, v1}, Lcom/avira/android/cropimage/c;->b(Ljava/lang/Thread;)V

    goto :goto_0
.end method
