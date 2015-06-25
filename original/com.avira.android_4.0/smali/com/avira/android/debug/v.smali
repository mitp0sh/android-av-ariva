.class final Lcom/avira/android/debug/v;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/avira/android/debug/DebuggingPreferencesActivity;


# direct methods
.method constructor <init>(Lcom/avira/android/debug/DebuggingPreferencesActivity;)V
    .locals 0

    .prologue
    .line 429
    iput-object p1, p0, Lcom/avira/android/debug/v;->a:Lcom/avira/android/debug/DebuggingPreferencesActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    .prologue
    .line 435
    sget-object v0, Lcom/avira/android/iab/a/k;->TEST_SKUS:[Ljava/lang/String;

    aget-object v0, v0, p2

    sput-object v0, Lcom/avira/android/iab/a/k;->a:Ljava/lang/String;

    .line 436
    iget-object v0, p0, Lcom/avira/android/debug/v;->a:Lcom/avira/android/debug/DebuggingPreferencesActivity;

    invoke-static {v0}, Lcom/avira/android/iab/a/k;->a(Landroid/content/Context;)V

    .line 437
    return-void
.end method
