.class public final Lcom/avira/android/idsafeguard/database/a/b;
.super Landroid/support/v4/content/d;
.source "SourceFile"


# static fields
.field private static final PROJECTION:[Ljava/lang/String;

.field private static final SELECTION:Ljava/lang/String; = "email=? and dismissed=?"


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 29
    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "email"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "id"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "title"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "breachedDate"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "description"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "breachedEmailTable.rowid as _id"

    aput-object v2, v0, v1

    sput-object v0, Lcom/avira/android/idsafeguard/database/a/b;->PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 50
    sget-object v2, Lcom/avira/android/idsafeguard/database/ISContentProvider;->BREACHED_EMAIL_INFO_CONTENT_URI:Landroid/net/Uri;

    sget-object v3, Lcom/avira/android/idsafeguard/database/a/b;->PROJECTION:[Ljava/lang/String;

    const-string v4, "email=? and dismissed=?"

    const/4 v0, 0x2

    new-array v5, v0, [Ljava/lang/String;

    aput-object p2, v5, v1

    const/4 v0, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v5, v0

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Landroid/support/v4/content/d;-><init>(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    .line 52
    return-void
.end method
