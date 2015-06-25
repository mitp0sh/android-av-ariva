.class public final Lcom/avira/android/antivirus/i;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final LOG_FOOTER:Ljava/lang/String; = "****************************"

.field private static final UPDATER_LOG_HEADER:Ljava/lang/String; = "********Updater logs********"

.field private static a:Lcom/avira/android/antivirus/i;


# instance fields
.field private b:Ljava/util/TreeMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/TreeMap",
            "<",
            "Ljava/lang/Long;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private c:Ljava/util/TreeMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/TreeMap",
            "<",
            "Ljava/lang/Long;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    iput-object v0, p0, Lcom/avira/android/antivirus/i;->b:Ljava/util/TreeMap;

    .line 32
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    iput-object v0, p0, Lcom/avira/android/antivirus/i;->c:Ljava/util/TreeMap;

    .line 33
    return-void
.end method

.method public static declared-synchronized a()Lcom/avira/android/antivirus/i;
    .locals 2

    .prologue
    .line 37
    const-class v1, Lcom/avira/android/antivirus/i;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/avira/android/antivirus/i;->a:Lcom/avira/android/antivirus/i;

    if-nez v0, :cond_0

    .line 39
    new-instance v0, Lcom/avira/android/antivirus/i;

    invoke-direct {v0}, Lcom/avira/android/antivirus/i;-><init>()V

    sput-object v0, Lcom/avira/android/antivirus/i;->a:Lcom/avira/android/antivirus/i;

    .line 41
    :cond_0
    sget-object v0, Lcom/avira/android/antivirus/i;->a:Lcom/avira/android/antivirus/i;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 37
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public final a(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 62
    iget-object v0, p0, Lcom/avira/android/antivirus/i;->b:Ljava/util/TreeMap;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 63
    return-void
.end method

.method public final b()V
    .locals 2

    .prologue
    .line 49
    iget-object v0, p0, Lcom/avira/android/antivirus/i;->b:Ljava/util/TreeMap;

    invoke-virtual {v0}, Ljava/util/TreeMap;->clear()V

    .line 50
    iget-object v0, p0, Lcom/avira/android/antivirus/i;->b:Ljava/util/TreeMap;

    iget-object v1, p0, Lcom/avira/android/antivirus/i;->c:Ljava/util/TreeMap;

    invoke-virtual {v0, v1}, Ljava/util/TreeMap;->putAll(Ljava/util/Map;)V

    .line 51
    iget-object v0, p0, Lcom/avira/android/antivirus/i;->c:Ljava/util/TreeMap;

    invoke-virtual {v0}, Ljava/util/TreeMap;->clear()V

    .line 52
    return-void
.end method

.method public final b(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 104
    iget-object v0, p0, Lcom/avira/android/antivirus/i;->c:Ljava/util/TreeMap;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 105
    return-void
.end method

.method public final c()Ljava/util/HashMap;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Long;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 74
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 75
    iget-object v1, p0, Lcom/avira/android/antivirus/i;->b:Ljava/util/TreeMap;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    .line 76
    return-object v0
.end method
