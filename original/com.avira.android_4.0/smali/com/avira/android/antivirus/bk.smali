.class public abstract Lcom/avira/android/antivirus/bk;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private a:Landroid/os/Handler;

.field private final b:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/avira/android/antivirus/data/ScannerCallbackData;",
            ">;"
        }
    .end annotation
.end field

.field private c:I

.field private d:I

.field private e:J

.field private f:J

.field private g:Lcom/avira/android/threatlandscape/api/a;


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    const-wide/16 v2, -0x1

    const/4 v1, 0x0

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/avira/android/antivirus/bk;->b:Ljava/util/HashMap;

    .line 33
    iput v1, p0, Lcom/avira/android/antivirus/bk;->c:I

    .line 34
    iput v1, p0, Lcom/avira/android/antivirus/bk;->d:I

    .line 35
    iput-wide v2, p0, Lcom/avira/android/antivirus/bk;->e:J

    .line 36
    iput-wide v2, p0, Lcom/avira/android/antivirus/bk;->f:J

    return-void
.end method


# virtual methods
.method public final a(IJ)V
    .locals 2

    .prologue
    .line 311
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 312
    const-string v1, "scan_progress"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 313
    const-string v1, "time_remaining"

    invoke-virtual {v0, v1, p2, p3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 314
    new-instance v1, Landroid/os/Message;

    invoke-direct {v1}, Landroid/os/Message;-><init>()V

    .line 315
    invoke-virtual {v1, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 316
    iget-object v0, p0, Lcom/avira/android/antivirus/bk;->a:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 318
    iget-object v0, p0, Lcom/avira/android/antivirus/bk;->a:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 320
    :cond_0
    return-void
.end method

.method public final a(ILcom/avira/android/antivirus/data/ScannerCallbackData;)V
    .locals 3

    .prologue
    .line 288
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 289
    const-string v1, "engine_scan_completed"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 290
    const-string v1, "callback_state"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 291
    const-string v1, "callback_message"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 293
    new-instance v1, Landroid/os/Message;

    invoke-direct {v1}, Landroid/os/Message;-><init>()V

    .line 294
    invoke-virtual {v1, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 296
    iget-object v0, p0, Lcom/avira/android/antivirus/bk;->a:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 298
    iget-object v0, p0, Lcom/avira/android/antivirus/bk;->a:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 301
    :cond_0
    return-void
.end method

.method public final a(J)V
    .locals 1

    .prologue
    .line 48
    iput-wide p1, p0, Lcom/avira/android/antivirus/bk;->e:J

    .line 49
    return-void
.end method

.method public final a(Landroid/os/Handler;)V
    .locals 0

    .prologue
    .line 90
    iput-object p1, p0, Lcom/avira/android/antivirus/bk;->a:Landroid/os/Handler;

    .line 91
    return-void
.end method

.method public final a(Lcom/avira/android/antivirus/e;)V
    .locals 4

    .prologue
    .line 208
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 209
    const-string v0, "engine_scan_completed"

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 211
    invoke-virtual {p0}, Lcom/avira/android/antivirus/bk;->p()Ljava/util/ArrayList;

    move-result-object v0

    .line 213
    sget-object v2, Lcom/avira/android/antivirus/e;->ON_ACCESS:Lcom/avira/android/antivirus/e;

    if-ne p1, v2, :cond_1

    .line 216
    const-string v2, "callback_message"

    const/4 v3, 0x0

    new-array v3, v3, [Lcom/avira/android/antivirus/data/ScannerCallbackData;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/os/Parcelable;

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putParcelableArray(Ljava/lang/String;[Landroid/os/Parcelable;)V

    .line 218
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 219
    invoke-virtual {v0, v1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 220
    iget-object v1, p0, Lcom/avira/android/antivirus/bk;->a:Landroid/os/Handler;

    if-eqz v1, :cond_0

    .line 222
    iget-object v1, p0, Lcom/avira/android/antivirus/bk;->a:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 235
    :cond_0
    :goto_0
    return-void

    .line 225
    :cond_1
    sget-object v0, Lcom/avira/android/antivirus/e;->ON_DEMAND:Lcom/avira/android/antivirus/e;

    if-ne p1, v0, :cond_0

    .line 227
    const-string v0, "start_scan_time"

    iget-wide v2, p0, Lcom/avira/android/antivirus/bk;->e:J

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 228
    const-string v0, "end_scan_time"

    iget-wide v2, p0, Lcom/avira/android/antivirus/bk;->f:J

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 229
    new-instance v0, Landroid/content/Intent;

    const-string v2, "com.avira.android.ACTION_DEMAND_SCAN_RESULT"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 231
    const-string v2, "com.avira.android.SCAN_RESULT"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 232
    invoke-static {v0}, Lcom/avira/android/ApplicationService;->a(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method public final b(J)V
    .locals 1

    .prologue
    .line 69
    iput-wide p1, p0, Lcom/avira/android/antivirus/bk;->f:J

    .line 70
    return-void
.end method

.method public final f()J
    .locals 2

    .prologue
    .line 58
    iget-wide v0, p0, Lcom/avira/android/antivirus/bk;->e:J

    return-wide v0
.end method

.method public final g()J
    .locals 2

    .prologue
    .line 79
    iget-wide v0, p0, Lcom/avira/android/antivirus/bk;->f:J

    return-wide v0
.end method

.method public final declared-synchronized h()V
    .locals 1

    .prologue
    .line 108
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/avira/android/antivirus/bk;->b:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 109
    monitor-exit p0

    return-void

    .line 108
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized i()Ljava/util/HashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/avira/android/antivirus/data/ScannerCallbackData;",
            ">;"
        }
    .end annotation

    .prologue
    .line 118
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/avira/android/antivirus/bk;->b:Ljava/util/HashMap;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final j()V
    .locals 1

    .prologue
    .line 126
    iget v0, p0, Lcom/avira/android/antivirus/bk;->c:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/avira/android/antivirus/bk;->c:I

    .line 127
    return-void
.end method

.method public final k()V
    .locals 1

    .prologue
    .line 134
    iget v0, p0, Lcom/avira/android/antivirus/bk;->d:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/avira/android/antivirus/bk;->d:I

    .line 135
    return-void
.end method

.method public final l()I
    .locals 1

    .prologue
    .line 144
    iget v0, p0, Lcom/avira/android/antivirus/bk;->c:I

    return v0
.end method

.method public final m()I
    .locals 1

    .prologue
    .line 154
    iget v0, p0, Lcom/avira/android/antivirus/bk;->d:I

    return v0
.end method

.method public final n()V
    .locals 4

    .prologue
    const-wide/16 v2, -0x1

    const/4 v0, 0x0

    .line 162
    iput-wide v2, p0, Lcom/avira/android/antivirus/bk;->e:J

    .line 163
    iput-wide v2, p0, Lcom/avira/android/antivirus/bk;->f:J

    .line 164
    iput v0, p0, Lcom/avira/android/antivirus/bk;->c:I

    .line 165
    iput v0, p0, Lcom/avira/android/antivirus/bk;->d:I

    .line 166
    return-void
.end method

.method public final declared-synchronized o()V
    .locals 5

    .prologue
    .line 187
    monitor-enter p0

    :try_start_0
    new-instance v0, Lcom/avira/android/threatlandscape/api/b;

    invoke-static {}, Lcom/avira/android/common/web/o;->a()Lcom/avira/android/common/web/o;

    move-result-object v1

    invoke-static {}, Lcom/avira/android/ApplicationService;->b()Lcom/avira/android/ApplicationService;

    move-result-object v2

    invoke-virtual {v2}, Lcom/avira/android/ApplicationService;->c()Landroid/telephony/TelephonyManager;

    move-result-object v2

    new-instance v3, Lcom/avira/android/utilities/a;

    invoke-static {}, Lcom/avira/android/database/h;->e()Lcom/avira/android/database/h;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/avira/android/utilities/a;-><init>(Lcom/avira/android/database/h;)V

    invoke-static {}, Lcom/avira/android/utilities/t;->b()Lcom/avira/android/utilities/t;

    move-result-object v4

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/avira/android/threatlandscape/api/b;-><init>(Lcom/avira/android/common/web/o;Landroid/telephony/TelephonyManager;Lcom/avira/android/utilities/a;Lcom/avira/android/utilities/t;)V

    iput-object v0, p0, Lcom/avira/android/antivirus/bk;->g:Lcom/avira/android/threatlandscape/api/a;

    iget-object v0, p0, Lcom/avira/android/antivirus/bk;->g:Lcom/avira/android/threatlandscape/api/a;

    .line 189
    invoke-static {}, Lcom/avira/android/ApplicationService;->b()Lcom/avira/android/ApplicationService;

    move-result-object v1

    .line 192
    invoke-virtual {p0}, Lcom/avira/android/antivirus/bk;->i()Ljava/util/HashMap;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/HashMap;->size()I

    move-result v2

    if-lez v2, :cond_0

    .line 194
    invoke-virtual {p0}, Lcom/avira/android/antivirus/bk;->i()Ljava/util/HashMap;

    move-result-object v2

    invoke-interface {v0, v2, v1}, Lcom/avira/android/threatlandscape/api/a;->a(Ljava/util/HashMap;Landroid/content/Context;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 196
    :cond_0
    monitor-exit p0

    return-void

    .line 187
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized p()Ljava/util/ArrayList;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/avira/android/antivirus/data/ScannerCallbackData;",
            ">;"
        }
    .end annotation

    .prologue
    .line 246
    monitor-enter p0

    :try_start_0
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 248
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 250
    iget-object v0, p0, Lcom/avira/android/antivirus/bk;->b:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_0
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 252
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/avira/android/antivirus/data/ScannerCallbackData;

    .line 253
    invoke-virtual {v1}, Lcom/avira/android/antivirus/data/ScannerCallbackData;->getInfectedFileInfoList()Ljava/util/HashMap;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/avira/android/antivirus/data/ScannedFileInfo;

    .line 255
    invoke-virtual {v2}, Lcom/avira/android/antivirus/data/ScannedFileInfo;->a()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    .line 257
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 261
    :cond_2
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 263
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 246
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 267
    :cond_3
    :try_start_1
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 269
    iget-object v2, p0, Lcom/avira/android/antivirus/bk;->b:Ljava/util/HashMap;

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 272
    :cond_4
    monitor-exit p0

    return-object v3
.end method
