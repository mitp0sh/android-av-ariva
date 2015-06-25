.class public final Lcom/avira/android/blacklist/d/ab;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final PREF_BLOCK_PRIVATE_CALL:Ljava/lang/String; = "block_private_call"

.field private static final PREF_BLOCK_UNKNOWN_NUMBERS:Ljava/lang/String; = "block_unknown_numbers"


# instance fields
.field private final a:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput-object p1, p0, Lcom/avira/android/blacklist/d/ab;->a:Landroid/content/Context;

    .line 24
    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Boolean;)V
    .locals 3

    .prologue
    .line 53
    iget-object v0, p0, Lcom/avira/android/blacklist/d/ab;->a:Landroid/content/Context;

    const-string v1, "block_private_call"

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/avira/android/utilities/ad;->a(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 54
    return-void
.end method

.method public final a()Z
    .locals 3

    .prologue
    .line 33
    iget-object v0, p0, Lcom/avira/android/blacklist/d/ab;->a:Landroid/content/Context;

    const-string v1, "block_private_call"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/avira/android/utilities/ad;->b(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public final b(Ljava/lang/Boolean;)V
    .locals 3

    .prologue
    .line 63
    iget-object v0, p0, Lcom/avira/android/blacklist/d/ab;->a:Landroid/content/Context;

    const-string v1, "block_unknown_numbers"

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/avira/android/utilities/ad;->a(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 64
    return-void
.end method

.method public final b()Z
    .locals 3

    .prologue
    .line 43
    iget-object v0, p0, Lcom/avira/android/blacklist/d/ab;->a:Landroid/content/Context;

    const-string v1, "block_unknown_numbers"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/avira/android/utilities/ad;->b(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method
