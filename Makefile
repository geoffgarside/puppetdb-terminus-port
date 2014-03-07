# $FreeBSD$

PORTNAME=		puppetdb-terminus
PORTVERSION=		1.6.2
CATEGORIES=		databases ruby
MASTER_SITES=		http://downloads.puppetlabs.com/puppetdb/

MAINTAINER=		freebsd@geoffgarside.co.uk
COMMENT=		The PuppetDB storeconfigs backend terminus module

BUILD_DEPENDS=		puppet>=0:${PORTSDIR}/sysutils/puppet

#LICENSE=		Apache-2.0

USE_RUBY=		yes
NO_BUILD=		yes

.include <bsd.port.pre.mk>

do-install:
	${MKDIR} ${STAGEDIR}${RUBY_SITELIBDIR}/puppet
	(cd ${WRKSRC}/ext/master/lib/puppet && ${COPYTREE_SHARE} . ${STAGEDIR}${RUBY_SITELIBDIR}/puppet)

.include <bsd.port.post.mk>
