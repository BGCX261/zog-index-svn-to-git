package cn.zogo.index.common;

import javax.jdo.JDOHelper;
import javax.jdo.PersistenceManagerFactory;

/**
 * PersistenceManagerFactoryµ¥Àý
 * @author Declan
 *
 */
public final class PMF {
    private static final PersistenceManagerFactory pmfInstance =
        JDOHelper.getPersistenceManagerFactory("transactions-optional");

    private PMF() {}

    public static PersistenceManagerFactory get() {
        return pmfInstance;
    }
}