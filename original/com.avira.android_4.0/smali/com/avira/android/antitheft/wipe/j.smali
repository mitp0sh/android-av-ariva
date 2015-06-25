.class public final Lcom/avira/android/antitheft/wipe/j;
.super Lcom/avira/android/antitheft/wipe/n;
.source "SourceFile"


# static fields
.field private static final SIM_URI:Landroid/net/Uri;


# instance fields
.field private final b:Lcom/avira/android/antitheft/wipe/k;

.field private final c:Landroid/content/ContentResolver;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 31
    const-string v0, "content://sms/sim/"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/avira/android/antitheft/wipe/j;->SIM_URI:Landroid/net/Uri;

    return-void
.end method

.method constructor <init>(Landroid/content/ContentResolver;)V
    .locals 2

    .prologue
    .line 36
    invoke-direct {p0}, Lcom/avira/android/antitheft/wipe/n;-><init>()V

    .line 37
    iput-object p1, p0, Lcom/avira/android/antitheft/wipe/j;->c:Landroid/content/ContentResolver;

    .line 38
    new-instance v0, Lcom/avira/android/antitheft/wipe/k;

    iget-object v1, p0, Lcom/avira/android/antitheft/wipe/j;->c:Landroid/content/ContentResolver;

    invoke-direct {v0, p0, v1}, Lcom/avira/android/antitheft/wipe/k;-><init>(Lcom/avira/android/antitheft/wipe/j;Landroid/content/ContentResolver;)V

    iput-object v0, p0, Lcom/avira/android/antitheft/wipe/j;->b:Lcom/avira/android/antitheft/wipe/k;

    .line 39
    return-void
.end method

.method static synthetic a(Lcom/avira/android/antitheft/wipe/j;)Landroid/content/ContentResolver;
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lcom/avira/android/antitheft/wipe/j;->c:Landroid/content/ContentResolver;

    return-object v0
.end method

.method static synthetic b()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 28
    sget-object v0, Lcom/avira/android/antitheft/wipe/j;->SIM_URI:Landroid/net/Uri;

    return-object v0
.end method


# virtual methods
.method public final a()Ljava/lang/Boolean;
    .locals 8

    .prologue
    const/4 v1, 0x0

    .line 60
    sget-object v0, Lcom/avira/android/antitheft/wipe/l;->SMS:Lcom/avira/android/antitheft/wipe/l;

    invoke-virtual {v0}, Lcom/avira/android/antitheft/wipe/l;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, v1}, Lcom/avira/android/antitheft/wipe/j;->a(Ljava/lang/String;Z)V

    .line 61
    sget-object v0, Lcom/avira/android/antitheft/wipe/l;->CONTACTS:Lcom/avira/android/antitheft/wipe/l;

    invoke-virtual {v0}, Lcom/avira/android/antitheft/wipe/l;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, v1}, Lcom/avira/android/antitheft/wipe/j;->a(Ljava/lang/String;Z)V

    .line 64
    :try_start_0
    iget-object v0, p0, Lcom/avira/android/antitheft/wipe/j;->b:Lcom/avira/android/antitheft/wipe/k;

    const/4 v1, 0x0

    const/4 v2, 0x0

    sget-object v3, Lcom/avira/android/antitheft/wipe/j;->SIM_URI:Landroid/net/Uri;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Lcom/avira/android/antitheft/wipe/k;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 73
    :goto_0
    :try_start_1
    iget-object v0, p0, Lcom/avira/android/antitheft/wipe/j;->c:Landroid/content/ContentResolver;

    sget-object v1, Landroid/provider/ContactsContract$RawContacts;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "_id"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "account_type"

    aput-object v4, v2, v3

    const-string v3, "account_type like \'%sim\'"

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3

    if-eqz v1, :cond_1

    :goto_1
    :try_start_2
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_2

    sget-object v2, Landroid/provider/ContactsContract$RawContacts;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v2}, Landroid/content/ContentProviderOperation;->newDelete(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v2

    const-string v3, "_id=?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "_id"

    invoke-interface {v1, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    invoke-interface {v1, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentProviderOperation$Builder;->withSelection(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Landroid/content/OperationApplicationException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_4

    goto :goto_1

    :catch_0
    move-exception v0

    :try_start_3
    const-string v2, "RemoteWipe.wipeContacts"

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    :goto_2
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    .line 80
    :cond_1
    :goto_3
    iget-boolean v0, p0, Lcom/avira/android/antitheft/wipe/j;->a:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    .line 66
    :catch_1
    move-exception v0

    .line 68
    const-string v1, "sim"

    const-string v2, "FAILED"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/avira/android/antitheft/wipe/ATRemoteWipe;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 69
    const-string v1, "RemoteWipe.tryWipeSimContents"

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 73
    :cond_2
    :try_start_4
    iget-object v2, p0, Lcom/avira/android/antitheft/wipe/j;->c:Landroid/content/ContentResolver;

    const-string v3, "com.android.contacts"

    invoke-virtual {v2, v3, v0}, Landroid/content/ContentResolver;->applyBatch(Ljava/lang/String;Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;

    iget-boolean v0, p0, Lcom/avira/android/antitheft/wipe/j;->a:Z

    if-nez v0, :cond_0

    sget-object v0, Lcom/avira/android/antitheft/wipe/l;->CONTACTS:Lcom/avira/android/antitheft/wipe/l;

    invoke-virtual {v0}, Lcom/avira/android/antitheft/wipe/l;->name()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x1

    invoke-virtual {p0, v0, v2}, Lcom/avira/android/antitheft/wipe/j;->a(Ljava/lang/String;Z)V
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Landroid/content/OperationApplicationException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4

    goto :goto_2

    :catch_2
    move-exception v0

    :try_start_5
    const-string v2, "RemoteWipe.wipeContacts"

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3

    goto :goto_2

    .line 75
    :catch_3
    move-exception v0

    .line 77
    const-string v1, "RemoteWipe.tryWipeSimContents"

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 78
    const-string v1, "sim"

    const-string v2, "FAILED"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v2, v0}, Lcom/avira/android/antitheft/wipe/ATRemoteWipe;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    .line 73
    :catch_4
    move-exception v0

    :try_start_6
    const-string v2, "RemoteWipe.wipeContacts"

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_3

    goto :goto_2
.end method

.method public final a(Ljava/lang/String;Z)V
    .locals 3

    .prologue
    .line 44
    invoke-super {p0, p1, p2}, Lcom/avira/android/antitheft/wipe/n;->a(Ljava/lang/String;Z)V

    .line 45
    iget-boolean v0, p0, Lcom/avira/android/antitheft/wipe/j;->a:Z

    if-eqz v0, :cond_0

    .line 47
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.avira.android.ACTION_WIPE_JOB_COMPLETED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 48
    const-string v1, "wipe_job_name_tag"

    sget-object v2, Lcom/avira/android/database/m;->SimWipe:Lcom/avira/android/database/m;

    invoke-virtual {v2}, Lcom/avira/android/database/m;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 49
    invoke-static {v0}, Lcom/avira/android/ApplicationService;->a(Landroid/content/Intent;)V

    .line 55
    :goto_0
    return-void

    .line 53
    :cond_0
    sget-object v0, Lcom/avira/android/database/m;->SimWipe:Lcom/avira/android/database/m;

    sget-object v1, Lcom/avira/android/database/l;->Failed:Lcom/avira/android/database/l;

    invoke-static {v0, v1}, Lcom/avira/android/antitheft/wipe/i;->a(Lcom/avira/android/database/m;Lcom/avira/android/database/l;)V

    goto :goto_0
.end method

.method public final synthetic call()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 28
    invoke-virtual {p0}, Lcom/avira/android/antitheft/wipe/j;->a()Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method
