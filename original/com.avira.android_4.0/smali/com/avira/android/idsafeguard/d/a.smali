.class public final Lcom/avira/android/idsafeguard/d/a;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final PREF_EMAIL_TEMPLATE_CACHE:Ljava/lang/String; = "is_email_template_cache"


# direct methods
.method public static a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 76
    new-instance v0, Lcom/avira/android/userprofile/s;

    invoke-direct {v0}, Lcom/avira/android/userprofile/s;-><init>()V

    .line 77
    invoke-virtual {v0}, Lcom/avira/android/userprofile/s;->a()Ljava/lang/String;

    move-result-object v0

    .line 78
    return-object v0
.end method

.method public static a(Landroid/content/ContentResolver;)Ljava/util/HashSet;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ContentResolver;",
            ")",
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 55
    new-instance v6, Ljava/util/HashSet;

    invoke-direct {v6}, Ljava/util/HashSet;-><init>()V

    .line 56
    sget-object v1, Landroid/provider/ContactsContract$CommonDataKinds$Email;->CONTENT_URI:Landroid/net/Uri;

    move-object v0, p0

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 57
    if-eqz v0, :cond_1

    .line 59
    :goto_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 61
    const-string v1, "data1"

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 63
    invoke-virtual {v6, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 65
    :cond_0
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 68
    :cond_1
    return-object v6
.end method
