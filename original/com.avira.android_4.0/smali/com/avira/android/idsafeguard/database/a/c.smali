.class public final Lcom/avira/android/idsafeguard/database/a/c;
.super Landroid/support/v4/content/d;
.source "SourceFile"


# static fields
.field private static final PROJECTION:[Ljava/lang/String;

.field private static final SELECTION:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 26
    const/4 v0, 0x0

    sput-object v0, Lcom/avira/android/idsafeguard/database/a/c;->SELECTION:Ljava/lang/String;

    .line 27
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "title"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "breachedDate"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "description"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "id as _id"

    aput-object v2, v0, v1

    sput-object v0, Lcom/avira/android/idsafeguard/database/a/c;->PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 6

    .prologue
    .line 46
    sget-object v2, Lcom/avira/android/idsafeguard/database/ISContentProvider;->RECENT_BREACHES_CONTENT_URI:Landroid/net/Uri;

    sget-object v3, Lcom/avira/android/idsafeguard/database/a/c;->PROJECTION:[Ljava/lang/String;

    sget-object v4, Lcom/avira/android/idsafeguard/database/a/c;->SELECTION:Ljava/lang/String;

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Landroid/support/v4/content/d;-><init>(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    .line 47
    return-void
.end method
