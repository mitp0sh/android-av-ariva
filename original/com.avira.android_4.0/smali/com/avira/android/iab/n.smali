.class final Lcom/avira/android/iab/n;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/avira/android/iab/IABRequestService;


# direct methods
.method constructor <init>(Lcom/avira/android/iab/IABRequestService;)V
    .locals 0

    .prologue
    .line 498
    iput-object p1, p0, Lcom/avira/android/iab/n;->a:Lcom/avira/android/iab/IABRequestService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .prologue
    .line 503
    iget-object v0, p0, Lcom/avira/android/iab/n;->a:Lcom/avira/android/iab/IABRequestService;

    sget v1, Lcom/avira/android/iab/a/k;->b:I

    invoke-static {v0, v1}, Lcom/avira/android/iab/IABRequestService;->a(Lcom/avira/android/iab/IABRequestService;I)V

    .line 504
    return-void
.end method
